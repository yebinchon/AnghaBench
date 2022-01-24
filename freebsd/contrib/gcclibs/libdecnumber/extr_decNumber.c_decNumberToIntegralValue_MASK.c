#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uInt ;
struct TYPE_24__ {int bits; scalar_t__ exponent; int /*<<< orphan*/  digits; } ;
typedef  TYPE_1__ decNumber ;
struct TYPE_25__ {scalar_t__ traps; int /*<<< orphan*/  digits; } ;
typedef  TYPE_2__ decContext ;

/* Variables and functions */
 int DECSPECIAL ; 
 int /*<<< orphan*/  DECUNUSED ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ *,scalar_t__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,TYPE_1__ const*,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,TYPE_2__*) ; 

decNumber *
FUNC7 (decNumber * res, const decNumber * rhs, decContext * set)
{
  decNumber dn;
  decContext workset;		/* working context */

#if DECCHECK
  if (decCheckOperands (res, DECUNUSED, rhs, set))
    return res;
#endif

  /* handle infinities and NaNs */
  if (rhs->bits & DECSPECIAL)
    {
      uInt status = 0;
      if (FUNC3 (rhs))
	FUNC2 (res, rhs);	/* an Infinity */
      else
	FUNC1 (res, rhs, NULL, &status);	/* a NaN */
      if (status != 0)
	FUNC6 (res, status, set);
      return res;
    }

  /* we have a finite number; no error possible */
  if (rhs->exponent >= 0)
    return FUNC2 (res, rhs);
  /* that was easy, but if negative exponent we have work to do... */
  workset = *set;		/* clone rounding, etc. */
  workset.digits = rhs->digits;	/* no length rounding */
  workset.traps = 0;		/* no traps */
  FUNC5 (&dn);		/* make a number with exponent 0 */
  return FUNC4 (res, rhs, &dn, &workset);
}