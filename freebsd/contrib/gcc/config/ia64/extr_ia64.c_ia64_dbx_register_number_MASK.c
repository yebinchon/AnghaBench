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
struct TYPE_2__ {int reg_fp; int n_input_regs; int n_local_regs; } ;

/* Variables and functions */
 int HARD_FRAME_POINTER_REGNUM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 TYPE_1__ current_frame_info ; 

int
FUNC6 (int regno)
{
  /* In ia64_expand_prologue we quite literally renamed the frame pointer
     from its home at loc79 to something inside the register frame.  We
     must perform the same renumbering here for the debug info.  */
  if (current_frame_info.reg_fp)
    {
      if (regno == HARD_FRAME_POINTER_REGNUM)
	regno = current_frame_info.reg_fp;
      else if (regno == current_frame_info.reg_fp)
	regno = HARD_FRAME_POINTER_REGNUM;
    }

  if (FUNC1 (regno))
    return 32 + regno - FUNC0 (0);
  else if (FUNC3 (regno))
    return 32 + current_frame_info.n_input_regs + regno - FUNC2 (0);
  else if (FUNC5 (regno))
    return (32 + current_frame_info.n_input_regs
	    + current_frame_info.n_local_regs + regno - FUNC4 (0));
  else
    return regno;
}