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
 scalar_t__ MIPS_NUMREGS ; 
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 char* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ui_file*,struct frame_info*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ui_file*,struct frame_info*,int) ; 
 int FUNC8 (struct ui_file*,struct frame_info*,int) ; 

__attribute__((used)) static void
FUNC9 (struct gdbarch *gdbarch, struct ui_file *file,
			   struct frame_info *frame, int regnum, int all)
{
  if (regnum != -1)		/* do one specified register */
    {
      FUNC4 (regnum >= NUM_REGS);
      if (*(FUNC0 (regnum)) == '\0')
	FUNC2 ("Not a valid register for the current processor type");

      FUNC6 (file, frame, regnum, 0);
      FUNC3 (file, "\n");
    }
  else
    /* do all (or most) registers */
    {
      regnum = NUM_REGS;
      while (regnum < NUM_REGS + NUM_PSEUDO_REGS)
	{
	  if (FUNC1 (FUNC5 (gdbarch, regnum)) ==
	      TYPE_CODE_FLT)
	    {
	      if (all)		/* true for "INFO ALL-REGISTERS" command */
		regnum = FUNC7 (file, frame, regnum);
	      else
		regnum += MIPS_NUMREGS;	/* skip floating point regs */
	    }
	  else
	    regnum = FUNC8 (file, frame, regnum);
	}
    }
}