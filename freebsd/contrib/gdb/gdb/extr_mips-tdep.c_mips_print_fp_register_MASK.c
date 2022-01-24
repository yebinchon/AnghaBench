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
struct ui_file {int dummy; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {int fp0; } ;

/* Variables and functions */
 double FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  builtin_type_uint32 ; 
 int /*<<< orphan*/  builtin_type_uint64 ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*,...) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct frame_info*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct frame_info*,int,char*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,char,char,struct ui_file*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (double) ; 
 double FUNC12 (int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static void
FUNC13 (struct ui_file *file, struct frame_info *frame,
			int regnum)
{				/* do values for FP (float) regs */
  char *raw_buffer;
  double doub, flt1;	/* doubles extracted from raw hex data */
  int inv1, inv2;

  raw_buffer =
    (char *) FUNC1 (2 *
		     FUNC10 (current_gdbarch,
				    FUNC8 (current_gdbarch)->fp0));

  FUNC2 (file, "%s:", FUNC0 (regnum));
  FUNC2 (file, "%*s", 4 - (int) FUNC11 (FUNC0 (regnum)),
		    "");

  if (FUNC10 (current_gdbarch, regnum) == 4 || FUNC3 ())
    {
      /* 4-byte registers: Print hex and floating.  Also print even
         numbered registers as doubles.  */
      FUNC7 (frame, regnum, raw_buffer);
      flt1 = FUNC12 (FUNC5 (), raw_buffer, &inv1);

      FUNC9 (raw_buffer, builtin_type_uint32, 'x', 'w',
			      file);

      FUNC2 (file, " flt: ");
      if (inv1)
	FUNC2 (file, " <invalid float> ");
      else
	FUNC2 (file, "%-17.9g", flt1);

      if (regnum % 2 == 0)
	{
	  FUNC6 (frame, regnum, raw_buffer);
	  doub = FUNC12 (FUNC4 (), raw_buffer,
				&inv2);

	  FUNC2 (file, " dbl: ");
	  if (inv2)
	    FUNC2 (file, "<invalid double>");
	  else
	    FUNC2 (file, "%-24.17g", doub);
	}
    }
  else
    {
      /* Eight byte registers: print each one as hex, float and double.  */
      FUNC7 (frame, regnum, raw_buffer);
      flt1 = FUNC12 (FUNC5 (), raw_buffer, &inv1);

      FUNC6 (frame, regnum, raw_buffer);
      doub = FUNC12 (FUNC4 (), raw_buffer, &inv2);


      FUNC9 (raw_buffer, builtin_type_uint64, 'x', 'g',
			      file);

      FUNC2 (file, " flt: ");
      if (inv1)
	FUNC2 (file, "<invalid float>");
      else
	FUNC2 (file, "%-17.9g", flt1);

      FUNC2 (file, " dbl: ");
      if (inv2)
	FUNC2 (file, "<invalid double>");
      else
	FUNC2 (file, "%-24.17g", doub);
    }
}