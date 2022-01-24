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
struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/ * alpha_extra_func_info_t ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 struct frame_unwind const alpha_mdebug_frame_unwind ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*) ; 

const struct frame_unwind *
FUNC3 (struct frame_info *next_frame)
{
  CORE_ADDR pc = FUNC2 (next_frame);
  alpha_extra_func_info_t proc_desc;

  /* If this PC does not map to a PDR, then clearly this isn't an
     mdebug frame.  */
  proc_desc = FUNC1 (pc);
  if (proc_desc == NULL)
    return NULL;

  /* If we're in the prologue, the PDR for this frame is not yet valid.
     Say no here and we'll fall back on the heuristic unwinder.  */
  if (FUNC0 (pc, proc_desc))
    return NULL;

  return &alpha_mdebug_frame_unwind;
}