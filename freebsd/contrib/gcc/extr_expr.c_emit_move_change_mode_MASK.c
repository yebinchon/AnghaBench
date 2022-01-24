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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ reload_in_progress ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC6 (enum machine_mode new_mode,
		       enum machine_mode old_mode, rtx x, bool force)
{
  rtx ret;

  if (FUNC0 (x))
    {
      /* We don't have to worry about changing the address since the
	 size in bytes is supposed to be the same.  */
      if (reload_in_progress)
	{
	  /* Copy the MEM to change the mode and move any
	     substitutions from the old MEM to the new one.  */
	  ret = FUNC2 (x, new_mode, 0);
	  FUNC3 (x, ret);
	}
      else
	ret = FUNC1 (x, new_mode, 0);
    }
  else
    {
      /* Note that we do want simplify_subreg's behavior of validating
	 that the new mode is ok for a hard register.  If we were to use
	 simplify_gen_subreg, we would create the subreg, but would
	 probably run into the target not being able to implement it.  */
      /* Except, of course, when FORCE is true, when this is exactly what
	 we want.  Which is needed for CCmodes on some targets.  */
      if (force)
	ret = FUNC4 (new_mode, x, old_mode, 0);
      else
	ret = FUNC5 (new_mode, x, old_mode, 0);
    }

  return ret;
}