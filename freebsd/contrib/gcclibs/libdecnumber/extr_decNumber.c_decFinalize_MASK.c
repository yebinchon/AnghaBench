#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uInt ;
struct TYPE_12__ {scalar_t__ exponent; scalar_t__ digits; int /*<<< orphan*/  lsu; } ;
typedef  TYPE_1__ decNumber ;
struct TYPE_13__ {scalar_t__ emin; scalar_t__ emax; scalar_t__ digits; int /*<<< orphan*/  clamp; } ;
typedef  TYPE_2__ decContext ;
typedef  scalar_t__ Int ;

/* Variables and functions */
 int /*<<< orphan*/  DEC_Clamped ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC5 (decNumber * dn, decContext * set, Int * residue, uInt * status)
{
  Int shift;			/* shift needed if clamping */

  /* We have to be careful when checking the exponent as the adjusted */
  /* exponent could overflow 31 bits [because it may already be up */
  /* to twice the expected]. */

  /* First test for subnormal.  This must be done before any final */
  /* round as the result could be rounded to Nmin or 0. */
  if (dn->exponent < 0		/* negative exponent */
      && (dn->exponent < set->emin - dn->digits + 1))
    {
      /* Go handle subnormals; this will apply round if needed. */
      FUNC3 (dn, set, residue, status);
      return;
    }

  /* now apply any pending round (this could raise overflow). */
  if (*residue != 0)
    FUNC1 (dn, set, *residue, status);

  /* Check for overflow [redundant in the 'rare' case] or clamp */
  if (dn->exponent <= set->emax - set->digits + 1)
    return;			/* neither needed */

  /* here when we might have an overflow or clamp to do */
  if (dn->exponent > set->emax - dn->digits + 1)
    {				/* too big */
      FUNC2 (dn, set, status);
      return;
    }
  /* here when the result is normal but in clamp range */
  if (!set->clamp)
    return;

  /* here when we need to apply the IEEE exponent clamp (fold-down) */
  shift = dn->exponent - (set->emax - set->digits + 1);

  /* shift coefficient (if non-zero) */
  if (!FUNC0 (dn))
    {
      dn->digits = FUNC4 (dn->lsu, dn->digits, shift);
    }
  dn->exponent -= shift;	/* adjust the exponent to match */
  *status |= DEC_Clamped;	/* and record the dirty deed */
  return;
}