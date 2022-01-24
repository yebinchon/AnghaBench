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
struct TYPE_2__ {int frame_size; int first_save_gpr_slot; int gprs_offset; } ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
#define  ARG_POINTER_REGNUM 131 
#define  BASE_REGNUM 130 
#define  FRAME_POINTER_REGNUM 129 
#define  RETURN_ADDRESS_POINTER_REGNUM 128 
 int RETURN_REGNUM ; 
 int STACK_POINTER_OFFSET ; 
 int UNITS_PER_WORD ; 
 TYPE_1__ cfun_frame_layout ; 
 int current_function_outgoing_args_size ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

HOST_WIDE_INT
FUNC5 (int from, int to)
{
  HOST_WIDE_INT offset;
  int index;

  /* ??? Why are we called for non-eliminable pairs?  */
  if (!FUNC3 (from, to))
    return 0;

  switch (from)
    {
    case FRAME_POINTER_REGNUM:
      offset = (FUNC2() 
		+ STACK_POINTER_OFFSET
		+ current_function_outgoing_args_size);
      break;

    case ARG_POINTER_REGNUM:
      FUNC4 ();
      offset = cfun_frame_layout.frame_size + STACK_POINTER_OFFSET;
      break;

    case RETURN_ADDRESS_POINTER_REGNUM:
      FUNC4 ();
      index = RETURN_REGNUM - cfun_frame_layout.first_save_gpr_slot;
      FUNC0 (index >= 0);
      offset = cfun_frame_layout.frame_size + cfun_frame_layout.gprs_offset;
      offset += index * UNITS_PER_WORD;
      break;

    case BASE_REGNUM:
      offset = 0;
      break;

    default:
      FUNC1 ();
    }

  return offset;
}