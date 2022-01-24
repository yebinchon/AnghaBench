#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
struct TYPE_6__ {TYPE_2__* machine; } ;
struct TYPE_4__ {scalar_t__ args_size; scalar_t__ total_size; int /*<<< orphan*/  initialized; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ TARGET_MIPS16 ; 
 scalar_t__ arg_pointer_rtx ; 
 TYPE_3__* cfun ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ frame_pointer_needed ; 
 scalar_t__ frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ hard_frame_pointer_rtx ; 
 scalar_t__ stack_pointer_rtx ; 

HOST_WIDE_INT
FUNC5 (rtx addr, HOST_WIDE_INT offset)
{
  rtx offset2 = const0_rtx;
  rtx reg = FUNC2 (addr, &offset2);

  if (offset == 0)
    offset = FUNC0 (offset2);

  if (reg == stack_pointer_rtx || reg == frame_pointer_rtx
      || reg == hard_frame_pointer_rtx)
    {
      HOST_WIDE_INT frame_size = (!cfun->machine->frame.initialized)
				  ? FUNC1 (FUNC4 ())
				  : cfun->machine->frame.total_size;

      /* MIPS16 frame is smaller */
      if (frame_pointer_needed && TARGET_MIPS16)
	frame_size -= cfun->machine->frame.args_size;

      offset = offset - frame_size;
    }

  /* sdbout_parms does not want this to crash for unrecognized cases.  */
#if 0
  else if (reg != arg_pointer_rtx)
    fatal_insn ("mips_debugger_offset called with non stack/frame/arg pointer",
		addr);
#endif

  return offset;
}