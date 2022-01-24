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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TARGET_BYTE_ORDER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct frame_info*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int) ; 
 struct gdbarch* FUNC6 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct ui_file*,struct frame_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,struct ui_file*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10 (struct ui_file *file, struct frame_info *frame,
		     int regnum, int all)
{
  struct gdbarch *gdbarch = FUNC6 (frame);
  char raw_buffer[MAX_REGISTER_SIZE];
  int offset;

  if (FUNC1 (FUNC5 (gdbarch, regnum)) == TYPE_CODE_FLT)
    {
      FUNC7 (file, frame, regnum);
      return;
    }

  /* Get the data in raw format.  */
  if (!FUNC4 (frame, regnum, raw_buffer))
    {
      FUNC2 (file, "%s: [Invalid]", FUNC0 (regnum));
      return;
    }

  FUNC3 (FUNC0 (regnum), file);

  /* The problem with printing numeric register names (r26, etc.) is that
     the user can't use them on input.  Probably the best solution is to
     fix it so that either the numeric or the funky (a2, etc.) names
     are accepted on input.  */
  if (regnum < MIPS_NUMREGS)
    FUNC2 (file, "(r%d): ", regnum);
  else
    FUNC2 (file, ": ");

  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    offset =
      FUNC9 (current_gdbarch,
		     regnum) - FUNC9 (current_gdbarch, regnum);
  else
    offset = 0;

  FUNC8 (raw_buffer + offset,
			  FUNC5 (gdbarch, regnum), 'x', 0,
			  file);
}