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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum expand_modifier { ____Placeholder_expand_modifier } expand_modifier ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int Pmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int ptr_mode ; 

__attribute__((used)) static rtx
FUNC6 (tree exp, rtx target, enum machine_mode tmode,
		       enum expand_modifier modifier)
{
  enum machine_mode rmode;
  rtx result;

  /* Target mode of VOIDmode says "whatever's natural".  */
  if (tmode == VOIDmode)
    tmode = FUNC3 (FUNC2 (exp));

  /* We can get called with some Weird Things if the user does silliness
     like "(short) &a".  In that case, convert_memory_address won't do
     the right thing, so ignore the given target mode.  */
  if (tmode != Pmode && tmode != ptr_mode)
    tmode = Pmode;

  result = FUNC5 (FUNC1 (exp, 0), target,
				    tmode, modifier);

  /* Despite expand_expr claims concerning ignoring TMODE when not
     strictly convenient, stuff breaks if we don't honor it.  Note
     that combined with the above, we only do this for pointer modes.  */
  rmode = FUNC0 (result);
  if (rmode == VOIDmode)
    rmode = tmode;
  if (rmode != tmode)
    result = FUNC4 (tmode, result);

  return result;
}