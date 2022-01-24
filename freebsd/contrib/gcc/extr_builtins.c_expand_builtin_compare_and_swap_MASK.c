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

/* Variables and functions */
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rtx
FUNC10 (enum machine_mode mode, tree arglist,
				 bool is_bool, rtx target)
{
  rtx old_val, new_val, mem;
  enum machine_mode old_mode;

  /* Expand the operands.  */
  mem = FUNC9 (FUNC3 (arglist), mode);

  arglist = FUNC1 (arglist);
  old_val = FUNC7 (FUNC3 (arglist), NULL, mode, EXPAND_NORMAL);
  /* If VAL is promoted to a wider mode, convert it back to MODE.  Take care
     of CONST_INTs, where we know the old_mode only from the call argument.  */
  old_mode = FUNC0 (old_val);
  if (old_mode == VOIDmode)
    old_mode = FUNC4 (FUNC2 (FUNC3 (arglist)));
  old_val = FUNC5 (mode, old_mode, old_val, 1);

  arglist = FUNC1 (arglist);
  new_val = FUNC7 (FUNC3 (arglist), NULL, mode, EXPAND_NORMAL);
  /* If VAL is promoted to a wider mode, convert it back to MODE.  Take care
     of CONST_INTs, where we know the old_mode only from the call argument.  */
  old_mode = FUNC0 (new_val);
  if (old_mode == VOIDmode)
    old_mode = FUNC4 (FUNC2 (FUNC3 (arglist)));
  new_val = FUNC5 (mode, old_mode, new_val, 1);

  if (is_bool)
    return FUNC6 (mem, old_val, new_val, target);
  else
    return FUNC8 (mem, old_val, new_val, target);
}