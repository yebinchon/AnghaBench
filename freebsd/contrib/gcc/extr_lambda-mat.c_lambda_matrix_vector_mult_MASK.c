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
 int /*<<< orphan*/  FUNC0 (int*,int) ; 

void
FUNC1 (lambda_matrix matrix, int m, int n,
			   lambda_vector vec, lambda_vector dest)
{
  int i, j;

  FUNC0 (dest, m);
  for (i = 0; i < m; i++)
    for (j = 0; j < n; j++)
      dest[i] += matrix[i][j] * vec[j];
}