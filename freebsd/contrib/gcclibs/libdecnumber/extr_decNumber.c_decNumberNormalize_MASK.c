#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uInt ;
struct TYPE_25__ {scalar_t__ digits; } ;
typedef  TYPE_1__ decNumber ;
struct TYPE_26__ {scalar_t__ digits; int /*<<< orphan*/  extended; } ;
typedef  TYPE_2__ decContext ;
typedef  int /*<<< orphan*/  Int ;

/* Variables and functions */
 int /*<<< orphan*/  DECUNUSED ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC5 (TYPE_1__ const*,TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

decNumber *
FUNC9 (decNumber * res, const decNumber * rhs, decContext * set)
{
  decNumber *allocrhs = NULL;	/* non-NULL if rounded rhs allocated */
  uInt status = 0;		/* as usual */
  Int residue = 0;		/* as usual */
  Int dropped;			/* work */

#if DECCHECK
  if (decCheckOperands (res, DECUNUSED, rhs, set))
    return res;
#endif

  do
    {				/* protect allocated storage */
#if DECSUBSET
      if (!set->extended)
	{
	  /* reduce operand and set lostDigits status, as needed */
	  if (rhs->digits > set->digits)
	    {
	      allocrhs = decRoundOperand (rhs, set, &status);
	      if (allocrhs == NULL)
		break;
	      rhs = allocrhs;
	    }
	}
#endif
      /* [following code does not require input rounding] */

      /* specials copy through, except NaNs need care */
      if (FUNC4 (rhs))
	{
	  FUNC3 (res, rhs, NULL, &status);
	  break;
	}

      /* reduce result to the requested length and copy to result */
      FUNC1 (res, rhs, set, &residue, &status);	/* copy & round */
      FUNC2 (res, set, &residue, &status);	/* cleanup/set flags */
      FUNC7 (res, 1, &dropped);	/* normalize in place */
    }
  while (0);			/* end protected */

  if (allocrhs != NULL)
    FUNC8 (allocrhs);		/* .. */
  if (status != 0)
    FUNC6 (res, status, set);	/* then report status */
  return res;
}