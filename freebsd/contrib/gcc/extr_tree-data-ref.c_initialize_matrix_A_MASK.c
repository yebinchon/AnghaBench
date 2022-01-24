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
typedef  int /*<<< orphan*/  tree ;
typedef  int** lambda_matrix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (lambda_matrix A, tree chrec, unsigned index, int mult)
{
  FUNC3 (chrec);

  if (FUNC2 (chrec) != POLYNOMIAL_CHREC)
    return FUNC4 (chrec);

  A[index][0] = mult * FUNC4 (FUNC1 (chrec));
  return FUNC5 (A, FUNC0 (chrec), index + 1, mult);
}