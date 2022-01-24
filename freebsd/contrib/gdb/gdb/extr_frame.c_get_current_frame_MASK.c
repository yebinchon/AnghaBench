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
struct frame_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RETURN_MASK_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct frame_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct frame_info* FUNC1 (int /*<<< orphan*/ ) ; 
 struct frame_info* current_frame ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  target_has_memory ; 
 int /*<<< orphan*/  target_has_registers ; 
 int /*<<< orphan*/  target_has_stack ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  unwind_to_current_frame ; 

struct frame_info *
FUNC3 (void)
{
  /* First check, and report, the lack of registers.  Having GDB
     report "No stack!" or "No memory" when the target doesn't even
     have registers is very confusing.  Besides, "printcmd.exp"
     explicitly checks that ``print $pc'' with no registers prints "No
     registers".  */
  if (!target_has_registers)
    FUNC2 ("No registers.");
  if (!target_has_stack)
    FUNC2 ("No stack.");
  if (!target_has_memory)
    FUNC2 ("No memory.");
  if (current_frame == NULL)
    {
      struct frame_info *sentinel_frame =
	FUNC1 (current_regcache);
      if (FUNC0 (uiout, unwind_to_current_frame, sentinel_frame,
			    NULL, RETURN_MASK_ERROR) != 0)
	{
	  /* Oops! Fake a current frame?  Is this useful?  It has a PC
             of zero, for instance.  */
	  current_frame = sentinel_frame;
	}
    }
  return current_frame;
}