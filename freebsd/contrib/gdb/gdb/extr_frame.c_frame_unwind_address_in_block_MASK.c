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
struct frame_info {scalar_t__ level; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ NORMAL_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct frame_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct frame_info*) ; 

CORE_ADDR
FUNC3 (struct frame_info *next_frame)
{
  /* A draft address.  */
  CORE_ADDR pc = FUNC0 (next_frame);

  if ((&frame_tdep_pc_fixup != NULL) && (FUNC1(&pc) == 0))
  	return pc;

  /* If THIS frame is not inner most (i.e., NEXT isn't the sentinel),
     and NEXT is `normal' (i.e., not a sigtramp, dummy, ....) THIS
     frame's PC ends up pointing at the instruction fallowing the
     "call".  Adjust that PC value so that it falls on the call
     instruction (which, hopefully, falls within THIS frame's code
     block.  So far it's proved to be a very good approximation.  See
     get_frame_type for why ->type can't be used.  */
  if (next_frame->level >= 0
      && FUNC2 (next_frame) == NORMAL_FRAME)
    --pc;
  return pc;
}