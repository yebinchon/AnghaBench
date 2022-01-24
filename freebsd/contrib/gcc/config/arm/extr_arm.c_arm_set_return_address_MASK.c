#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_3__ {int outgoing_args; int frame; } ;
typedef  TYPE_1__ arm_stack_offsets ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LR_REGNUM ; 
 int /*<<< orphan*/  Pmode ; 
 unsigned long FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ frame_pointer_needed ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hard_frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

void
FUNC9 (rtx source, rtx scratch)
{
  arm_stack_offsets *offsets;
  HOST_WIDE_INT delta;
  rtx addr;
  unsigned long saved_regs;

  saved_regs = FUNC1 ();

  if ((saved_regs & (1 << LR_REGNUM)) == 0)
    FUNC4 (FUNC7 (Pmode, LR_REGNUM), source);
  else
    {
      if (frame_pointer_needed)
	addr = FUNC8(hard_frame_pointer_rtx, -4);
      else
	{
	  /* LR will be the first saved register.  */
	  offsets = FUNC2 ();
	  delta = offsets->outgoing_args - (offsets->frame + 4);


	  if (delta >= 4096)
	    {
	      FUNC3 (FUNC5 (scratch, stack_pointer_rtx,
				     FUNC0 (delta & ~4095)));
	      addr = scratch;
	      delta &= 4095;
	    }
	  else
	    addr = stack_pointer_rtx;

	  addr = FUNC8 (addr, delta);
	}
      FUNC4 (FUNC6 (Pmode, addr), source);
    }
}