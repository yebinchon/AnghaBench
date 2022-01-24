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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int BLKmode ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int UNITS_PER_WORD ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ reload_completed ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  word_mode ; 

rtx
FUNC9 (rtx op, unsigned int offset, int validate_address, enum machine_mode mode)
{
  if (mode == VOIDmode)
    mode = FUNC0 (op);

  FUNC5 (mode != VOIDmode);

  /* If OP is narrower than a word, fail.  */
  if (mode != BLKmode
      && (FUNC1 (mode) < UNITS_PER_WORD))
    return 0;

  /* If we want a word outside OP, return zero.  */
  if (mode != BLKmode
      && (offset + 1) * UNITS_PER_WORD > FUNC1 (mode))
    return const0_rtx;

  /* Form a new MEM at the requested address.  */
  if (FUNC2 (op))
    {
      rtx new = FUNC4 (op, word_mode, offset * UNITS_PER_WORD);

      if (! validate_address)
	return new;

      else if (reload_completed)
	{
	  if (! FUNC8 (word_mode, FUNC3 (new, 0)))
	    return 0;
	}
      else
	return FUNC6 (new, FUNC3 (new, 0));
    }

  /* Rest can be handled by simplify_subreg.  */
  return FUNC7 (word_mode, op, mode, (offset * UNITS_PER_WORD));
}