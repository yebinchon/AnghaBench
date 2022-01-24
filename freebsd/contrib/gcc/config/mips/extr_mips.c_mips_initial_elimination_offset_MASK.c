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
struct TYPE_6__ {TYPE_2__* machine; } ;
struct TYPE_4__ {scalar_t__ args_size; scalar_t__ total_size; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
#define  ARG_POINTER_REGNUM 129 
#define  FRAME_POINTER_REGNUM 128 
 int HARD_FRAME_POINTER_REGNUM ; 
 scalar_t__ TARGET_MIPS16 ; 
 TYPE_3__* cfun ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ current_function_pretend_args_size ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

HOST_WIDE_INT
FUNC3 (int from, int to)
{
  HOST_WIDE_INT offset;

  FUNC0 (FUNC2 ());

  /* Set OFFSET to the offset from the stack pointer.  */
  switch (from)
    {
    case FRAME_POINTER_REGNUM:
      offset = 0;
      break;

    case ARG_POINTER_REGNUM:
      offset = (cfun->machine->frame.total_size
		- current_function_pretend_args_size);
      break;

    default:
      FUNC1 ();
    }

  if (TARGET_MIPS16 && to == HARD_FRAME_POINTER_REGNUM)
    offset -= cfun->machine->frame.args_size;

  return offset;
}