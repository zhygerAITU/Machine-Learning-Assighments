function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
mn = zeros(size(X, 1), 1);
m = size(X, 1);
n = size(X, 2);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1:m,


    for j = 1:K,

        sm = 0;
        for q = 1:n,

            sm = sm + (X(i, q) - centroids(j, q)) ^ 2;

        end;

        sm = sqrt(sm);

        if j == 1,

            mn(i, 1) = sm;
            idx(i, 1) = j;
        end;

        if j != 1,

            if mn(i, 1) > sm,

                mn(i, 1) = sm;
                idx(i, 1) = j;

            end;    

        end;

    end;

end;




% =============================================================

end

