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
typedef  int /*<<< orphan*/ * lambda_matrix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

void
FUNC1 (lambda_matrix mat1, int const1,
		      lambda_matrix mat2, int const2,
		      lambda_matrix mat3, int m, int n)
{
  int i;

  for (i = 0; i < m; i++)
    FUNC0 (mat1[i], const1, mat2[i], const2, mat3[i], n);
}