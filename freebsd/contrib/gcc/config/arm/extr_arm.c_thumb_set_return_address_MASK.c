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
struct TYPE_3__ {int soft_frame; int saved_args; int outgoing_args; } ;
typedef  TYPE_1__ arm_stack_offsets ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LR_REGNUM ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  SImode ; 
 int SP_REGNUM ; 
 scalar_t__ TARGET_BACKTRACE ; 
 int THUMB_HARD_FRAME_POINTER_REGNUM ; 
 int /*<<< orphan*/  VOIDmode ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ frame_pointer_needed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 
 unsigned long FUNC10 () ; 

void
FUNC11 (rtx source, rtx scratch)
{
  arm_stack_offsets *offsets;
  HOST_WIDE_INT delta;
  int reg;
  rtx addr;
  unsigned long mask;

  FUNC2 (FUNC8 (VOIDmode, source));

  mask = FUNC10 ();
  if (mask & (1 << LR_REGNUM))
    {
      offsets = FUNC1 ();

      /* Find the saved regs.  */
      if (frame_pointer_needed)
	{
	  delta = offsets->soft_frame - offsets->saved_args;
	  reg = THUMB_HARD_FRAME_POINTER_REGNUM;
	}
      else
	{
	  delta = offsets->outgoing_args - offsets->saved_args;
	  reg = SP_REGNUM;
	}
      /* Allow for the stack frame.  */
      if (TARGET_BACKTRACE)
	delta -= 16;
      /* The link register is always the first saved register.  */
      delta -= 4;

      /* Construct the address.  */
      addr = FUNC7 (SImode, reg);
      if ((reg != SP_REGNUM && delta >= 128)
	  || delta >= 1024)
	{
	  FUNC2 (FUNC6 (scratch, FUNC0 (delta)));
	  FUNC2 (FUNC4 (scratch, scratch, stack_pointer_rtx));
	  addr = scratch;
	}
      else
	addr = FUNC9 (addr, delta);

      FUNC3 (FUNC5 (Pmode, addr), source);
    }
  else
    FUNC3 (FUNC7 (Pmode, LR_REGNUM), source);
}