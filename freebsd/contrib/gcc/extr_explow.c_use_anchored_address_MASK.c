#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {int /*<<< orphan*/  (* use_anchors_for_symbol_p ) (int /*<<< orphan*/ ) ;} ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cse_not_expected ; 
 int /*<<< orphan*/  flag_section_anchors ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_1__ targetm ; 

rtx
FUNC16 (rtx x)
{
  rtx base;
  HOST_WIDE_INT offset;

  if (!flag_section_anchors)
    return x;

  if (!FUNC3 (x))
    return x;

  /* Split the address into a base and offset.  */
  base = FUNC9 (x, 0);
  offset = 0;
  if (FUNC0 (base) == CONST
      && FUNC0 (FUNC9 (base, 0)) == PLUS
      && FUNC0 (FUNC9 (FUNC9 (base, 0), 1)) == CONST_INT)
    {
      offset += FUNC2 (FUNC9 (FUNC9 (base, 0), 1));
      base = FUNC9 (FUNC9 (base, 0), 0);
    }

  /* Check whether BASE is suitable for anchors.  */
  if (FUNC0 (base) != SYMBOL_REF
      || !FUNC7 (base)
      || FUNC4 (base)
      || FUNC5 (base) == NULL
      || !targetm.use_anchors_for_symbol_p (base))
    return x;

  /* Decide where BASE is going to be.  */
  FUNC12 (base);

  /* Get the anchor we need to use.  */
  offset += FUNC6 (base);
  base = FUNC11 (FUNC5 (base), offset,
			     FUNC8 (base));

  /* Work out the offset from the anchor.  */
  offset -= FUNC6 (base);

  /* If we're going to run a CSE pass, force the anchor into a register.
     We will then be able to reuse registers for several accesses, if the
     target costs say that that's worthwhile.  */
  if (!cse_not_expected)
    base = FUNC10 (FUNC1 (base), base);

  return FUNC14 (x, FUNC13 (base, offset));
}