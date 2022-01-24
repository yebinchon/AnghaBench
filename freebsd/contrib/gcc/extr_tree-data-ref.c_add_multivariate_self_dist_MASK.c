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
struct data_dependence_relation {int dummy; } ;
typedef  int /*<<< orphan*/ * lambda_vector ;
typedef  int /*<<< orphan*/  DDR_ARE_DEPENDENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC4 (struct data_dependence_relation*) ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct data_dependence_relation*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct data_dependence_relation*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11 (struct data_dependence_relation *ddr, tree c_2)
{
  int x_1, x_2;
  tree c_1 = FUNC0 (c_2);
  tree c_0 = FUNC0 (c_1);
  lambda_vector dist_v;

  /* Polynomials with more than 2 variables are not handled yet.  */
  if (FUNC5 (c_0) != INTEGER_CST)
    {
      DDR_ARE_DEPENDENT (ddr) = chrec_dont_know;
      return;
    }

  x_2 = FUNC7 (FUNC2 (c_2), FUNC3 (ddr));
  x_1 = FUNC7 (FUNC2 (c_1), FUNC3 (ddr));

  /* For "{{0, +, 2}_1, +, 3}_2" the distance vector is (3, -2).  */
  dist_v = FUNC9 (FUNC4 (ddr));
  dist_v[x_1] = FUNC8 (FUNC1 (c_2));
  dist_v[x_2] = -FUNC8 (FUNC1 (c_1));
  FUNC10 (ddr, dist_v);

  FUNC6 (ddr, dist_v, x_1);
}