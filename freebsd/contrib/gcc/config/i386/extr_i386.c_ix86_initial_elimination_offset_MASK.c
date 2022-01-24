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
struct ix86_frame {scalar_t__ frame_pointer_offset; scalar_t__ stack_pointer_offset; scalar_t__ hard_frame_pointer_offset; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 int ARG_POINTER_REGNUM ; 
 int FRAME_POINTER_REGNUM ; 
 int HARD_FRAME_POINTER_REGNUM ; 
 int STACK_POINTER_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ix86_frame*) ; 

HOST_WIDE_INT
FUNC2 (int from, int to)
{
  struct ix86_frame frame;
  FUNC1 (&frame);

  if (from == ARG_POINTER_REGNUM && to == HARD_FRAME_POINTER_REGNUM)
    return frame.hard_frame_pointer_offset;
  else if (from == FRAME_POINTER_REGNUM
	   && to == HARD_FRAME_POINTER_REGNUM)
    return frame.hard_frame_pointer_offset - frame.frame_pointer_offset;
  else
    {
      FUNC0 (to == STACK_POINTER_REGNUM);

      if (from == ARG_POINTER_REGNUM)
	return frame.stack_pointer_offset;

      FUNC0 (from == FRAME_POINTER_REGNUM);
      return frame.stack_pointer_offset - frame.frame_pointer_offset;
    }
}