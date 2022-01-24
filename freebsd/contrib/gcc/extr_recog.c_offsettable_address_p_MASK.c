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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 unsigned int BIGGEST_ALIGNMENT ; 
 unsigned int BITS_PER_UNIT ; 
 int BLKmode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ LO_SUM ; 
 int PLUS ; 
 int QImode ; 
 scalar_t__ RTX_AUTOINC ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int,int /*<<< orphan*/ ) ; 

int
FUNC15 (int strictp, enum machine_mode mode, rtx y)
{
  enum rtx_code ycode = FUNC1 (y);
  rtx z;
  rtx y1 = y;
  rtx *y2;
  int (*addressp) (enum machine_mode, rtx) =
    (strictp ? strict_memory_address_p : memory_address_p);
  unsigned int mode_sz = FUNC4 (mode);

  if (FUNC0 (y))
    return 1;

  /* Adjusting an offsettable address involves changing to a narrower mode.
     Make sure that's OK.  */

  if (FUNC10 (y))
    return 0;

  /* ??? How much offset does an offsettable BLKmode reference need?
     Clearly that depends on the situation in which it's being used.
     However, the current situation in which we test 0xffffffff is
     less than ideal.  Caveat user.  */
  if (mode_sz == 0)
    mode_sz = BIGGEST_ALIGNMENT / BITS_PER_UNIT;

  /* If the expression contains a constant term,
     see if it remains valid when max possible offset is added.  */

  if ((ycode == PLUS) && (y2 = FUNC7 (&y1)))
    {
      int good;

      y1 = *y2;
      *y2 = FUNC11 (*y2, mode_sz - 1);
      /* Use QImode because an odd displacement may be automatically invalid
	 for any wider mode.  But it should be valid for a single byte.  */
      good = (*addressp) (QImode, y);

      /* In any case, restore old contents of memory.  */
      *y2 = y1;
      return good;
    }

  if (FUNC5 (ycode) == RTX_AUTOINC)
    return 0;

  /* The offset added here is chosen as the maximum offset that
     any instruction could need to add when operating on something
     of the specified mode.  We assume that if Y and Y+c are
     valid addresses then so is Y+d for all 0<d<c.  adjust_address will
     go inside a LO_SUM here, so we do so as well.  */
  if (FUNC1 (y) == LO_SUM
      && mode != BLKmode
      && mode_sz <= FUNC3 (mode) / BITS_PER_UNIT)
    z = FUNC8 (FUNC2 (y), FUNC6 (y, 0),
			FUNC11 (FUNC6 (y, 1), mode_sz - 1));
  else
    z = FUNC11 (y, mode_sz - 1);

  /* Use QImode because an odd displacement may be automatically invalid
     for any wider mode.  But it should be valid for a single byte.  */
  return (*addressp) (QImode, z);
}