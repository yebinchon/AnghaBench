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
typedef  scalar_t__** lambda_matrix ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__**,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__**,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__**,scalar_t__**,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__**,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__**,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__**,int,int) ; 
 int FUNC7 (scalar_t__*,int,int) ; 

void
FUNC8 (lambda_matrix A, int m, int n,
			     lambda_matrix S, lambda_matrix V)
{
  int i, j, i0 = 0;

  FUNC3 (A, S, m, n);
  FUNC4 (V, m);

  for (j = 0; j < n; j++)
    {
      if (FUNC7 (S[j], m, i0) < m)
	{
	  ++i0;
	  for (i = m - 1; i >= i0; i--)
	    {
	      while (S[i][j] != 0)
		{
		  int sigma, factor, a, b;

		  a = S[i-1][j];
		  b = S[i][j];
		  sigma = (a * b < 0) ? -1: 1;
		  a = FUNC0 (a);
      b = FUNC0 (b);
		  factor = sigma * (a / b);

		  FUNC5 (S, n, i, i-1, -factor);
		  FUNC6 (S, i, i-1);

		  FUNC1 (V, m, i-1, i, factor);
		  FUNC2 (V, m, i, i-1);
		}
	    }
	}
    }
}