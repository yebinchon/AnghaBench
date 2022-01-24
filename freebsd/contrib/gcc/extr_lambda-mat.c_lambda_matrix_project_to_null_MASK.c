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
typedef  int /*<<< orphan*/  lambda_vector ;
typedef  int /*<<< orphan*/  lambda_matrix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void
FUNC8 (lambda_matrix B, int rowsize,
			       int colsize, int k, lambda_vector x)
{
  lambda_matrix M1, M2, M3, I;
  int determinant;

  /* Compute c(I-B^T inv(B B^T) B) e sub k.  */

  /* M1 is the transpose of B.  */
  M1 = FUNC6 (colsize, colsize);
  FUNC7 (B, M1, rowsize, colsize);

  /* M2 = B * B^T */
  M2 = FUNC6 (colsize, colsize);
  FUNC4 (B, M1, M2, rowsize, colsize, rowsize);

  /* M3 = inv(M2) */
  M3 = FUNC6 (colsize, colsize);
  determinant = FUNC3 (M2, M3, rowsize);

  /* M2 = B^T (inv(B B^T)) */
  FUNC4 (M1, M3, M2, colsize, rowsize, rowsize);

  /* M1 = B^T (inv(B B^T)) B */
  FUNC4 (M2, B, M1, colsize, rowsize, colsize);
  FUNC5 (M1, M1, colsize, colsize);

  I = FUNC6 (colsize, colsize);
  FUNC2 (I, colsize);

  FUNC0 (I, determinant, M1, 1, M2, colsize, colsize);

  FUNC1 (M2, colsize, k - 1, x);

}