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
 scalar_t__ BFD_ENDIAN_BIG ; 
 int MAX_REGISTER_SIZE ; 
 int MIPS_NUMREGS ; 
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 char* FUNC0 (int) ; 
 scalar_t__ TARGET_BYTE_ORDER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 struct gdbarch* current_gdbarch ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct frame_info*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int) ; 
 struct gdbarch* FUNC6 (struct frame_info*) ; 
 int FUNC7 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (struct gdbarch*,int) ; 

__attribute__((used)) static int
FUNC10 (struct ui_file *file, struct frame_info *frame,
		       int start_regnum)
{
  struct gdbarch *gdbarch = FUNC6 (frame);
  /* do values for GP (int) regs */
  char raw_buffer[MAX_REGISTER_SIZE];
  int ncols = (FUNC7 (gdbarch) == 8 ? 4 : 8);	/* display cols per row */
  int col, byte;
  int regnum;

  /* For GP registers, we print a separate row of names above the vals */
  FUNC3 (file, "     ");
  for (col = 0, regnum = start_regnum;
       col < ncols && regnum < NUM_REGS + NUM_PSEUDO_REGS; regnum++)
    {
      if (*FUNC0 (regnum) == '\0')
	continue;		/* unused register */
      if (FUNC1 (FUNC5 (gdbarch, regnum)) ==
	  TYPE_CODE_FLT)
	break;			/* end the row: reached FP register */
      FUNC3 (file,
			FUNC7 (current_gdbarch) == 8 ? "%17s" : "%9s",
			FUNC0 (regnum));
      col++;
    }
  /* print the R0 to R31 names */
  if ((start_regnum % NUM_REGS) < MIPS_NUMREGS)
    FUNC3 (file, "\n R%-4d", start_regnum % NUM_REGS);
  else
    FUNC3 (file, "\n      ");

  /* now print the values in hex, 4 or 8 to the row */
  for (col = 0, regnum = start_regnum;
       col < ncols && regnum < NUM_REGS + NUM_PSEUDO_REGS; regnum++)
    {
      if (*FUNC0 (regnum) == '\0')
	continue;		/* unused register */
      if (FUNC1 (FUNC5 (gdbarch, regnum)) ==
	  TYPE_CODE_FLT)
	break;			/* end row: reached FP register */
      /* OK: get the data in raw format.  */
      if (!FUNC4 (frame, regnum, raw_buffer))
	FUNC2 ("can't read register %d (%s)", regnum, FUNC0 (regnum));
      /* pad small registers */
      for (byte = 0;
	   byte < (FUNC7 (current_gdbarch)
		   - FUNC9 (current_gdbarch, regnum)); byte++)
	FUNC8 ("  ");
      /* Now print the register value in hex, endian order. */
      if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
	for (byte =
	     FUNC9 (current_gdbarch,
			    regnum) - FUNC9 (current_gdbarch, regnum);
	     byte < FUNC9 (current_gdbarch, regnum); byte++)
	  FUNC3 (file, "%02x", (unsigned char) raw_buffer[byte]);
      else
	for (byte = FUNC9 (current_gdbarch, regnum) - 1;
	     byte >= 0; byte--)
	  FUNC3 (file, "%02x", (unsigned char) raw_buffer[byte]);
      FUNC3 (file, " ");
      col++;
    }
  if (col > 0)			/* ie. if we actually printed anything... */
    FUNC3 (file, "\n");

  return regnum;
}