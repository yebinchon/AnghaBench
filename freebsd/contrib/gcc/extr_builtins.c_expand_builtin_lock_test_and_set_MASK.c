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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rtx
FUNC9 (enum machine_mode mode, tree arglist,
				  rtx target)
{
  rtx val, mem;
  enum machine_mode old_mode;

  /* Expand the operands.  */
  mem = FUNC8 (FUNC3 (arglist), mode);

  arglist = FUNC1 (arglist);
  val = FUNC6 (FUNC3 (arglist), NULL, mode, EXPAND_NORMAL);
  /* If VAL is promoted to a wider mode, convert it back to MODE.  Take care
     of CONST_INTs, where we know the old_mode only from the call argument.  */
  old_mode = FUNC0 (val);
  if (old_mode == VOIDmode)
    old_mode = FUNC4 (FUNC2 (FUNC3 (arglist)));
  val = FUNC5 (mode, old_mode, val, 1);

  return FUNC7 (mem, val, target);
}