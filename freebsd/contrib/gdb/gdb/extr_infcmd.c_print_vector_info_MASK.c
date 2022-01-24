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
struct ui_file {int dummy; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;

/* Variables and functions */
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 int /*<<< orphan*/ * deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,struct ui_file*,struct frame_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,struct ui_file*,struct frame_info*,char const*) ; 
 scalar_t__ FUNC4 (struct gdbarch*) ; 
 scalar_t__ FUNC5 (struct gdbarch*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_has_registers ; 
 int /*<<< orphan*/  vector_reggroup ; 

__attribute__((used)) static void
FUNC6 (struct gdbarch *gdbarch, struct ui_file *file,
		   struct frame_info *frame, const char *args)
{
  if (!target_has_registers)
    FUNC0 ("The program has no registers now.");
  if (deprecated_selected_frame == NULL)
    FUNC0 ("No selected frame.");

  if (FUNC4 (gdbarch))
    FUNC3 (gdbarch, file, frame, args);
  else
    {
      int regnum;
      int printed_something = 0;

      for (regnum = 0; regnum < NUM_REGS + NUM_PSEUDO_REGS; regnum++)
	{
	  if (FUNC5 (gdbarch, regnum, vector_reggroup))
	    {
	      printed_something = 1;
	      FUNC2 (gdbarch, file, frame, regnum, 1);
	    }
	}
      if (!printed_something)
	FUNC1 (file, "No vector information\n");
    }
}