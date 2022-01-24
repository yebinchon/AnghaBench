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
typedef  int /*<<< orphan*/  lambda_vector ;
typedef  int /*<<< orphan*/  DDR_ARE_DEPENDENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC2 (struct data_dependence_relation*) ; 
 int FUNC3 (struct data_dependence_relation*) ; 
 int FUNC4 (struct data_dependence_relation*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct data_dependence_relation*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct data_dependence_relation*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13 (struct data_dependence_relation *ddr)
{
  lambda_vector dist_v;
  unsigned i;
  int index_carry = FUNC3 (ddr);

  for (i = 0; i < FUNC4 (ddr); i++)
    {
      tree access_fun = FUNC5 (FUNC1 (ddr), i);

      if (FUNC7 (access_fun) == POLYNOMIAL_CHREC)
	{
	  if (!FUNC10 (access_fun))
	    {
	      if (FUNC4 (ddr) != 1)
		{
		  DDR_ARE_DEPENDENT (ddr) = chrec_dont_know;
		  return;
		}

	      FUNC8 (ddr, FUNC5 (FUNC1 (ddr), 0));
	      return;
	    }

	  index_carry = FUNC6 (index_carry,
			     FUNC11 (FUNC0 (access_fun),
						 FUNC2 (ddr)));
	}
    }

  dist_v = FUNC12 (FUNC3 (ddr));
  FUNC9 (ddr, dist_v, index_carry);
}