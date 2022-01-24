#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int* lambda_vector ;
typedef  int** lambda_matrix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int**,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int**,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int**,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int**,int**,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int**,int) ; 
 int /*<<< orphan*/  FUNC5 (int**,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int**,int,int) ; 
 int FUNC7 (int*,int,int) ; 
 int FUNC8 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int) ; 

void
FUNC10 (lambda_matrix mat, int n,
		       lambda_matrix H, lambda_matrix U)
{
  lambda_vector row;
  int i, j, factor, minimum_col;

  FUNC3 (mat, H, n, n);
  FUNC4 (U, n);

  for (j = 0; j < n; j++)
    {
      row = H[j];

      /* Make every element of H[j][j..n] positive.  */
      for (i = j; i < n; i++)
	{
	  if (row[i] < 0)
	    {
	      FUNC2 (H, n, i);
	      FUNC9 (U[i], U[i], n);
	    }
	}

      /* Stop when only the diagonal element is nonzero.  */
      while (FUNC7 (row, n, j + 1) < n)
	{
	  minimum_col = FUNC8 (row, n, j);
	  FUNC1 (H, n, j, minimum_col);
	  FUNC6 (U, j, minimum_col);

	  for (i = j + 1; i < n; i++)
	    {
	      factor = row[i] / row[j];
	      FUNC0 (H, n, j, i, -1 * factor);
	      FUNC5 (U, n, i, j, factor);
	    }
	}
    }
}