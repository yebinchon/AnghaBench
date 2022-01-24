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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int MAX_REGISTER_SIZE ; 
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 char* FUNC7 (int) ; 
 scalar_t__ TARGET_BYTE_ORDER ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Val_pretty_default ; 
 int /*<<< orphan*/  all_reggroup ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC10 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC12 (struct frame_info*,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct gdbarch*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  general_reggroup ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ui_file*,char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC19 (struct gdbarch *gdbarch,
			      struct ui_file *file,
			      struct frame_info *frame,
			      int regnum, int print_all)
{
  int i;
  const int numregs = NUM_REGS + NUM_PSEUDO_REGS;
  char raw_buffer[MAX_REGISTER_SIZE];
  char virtual_buffer[MAX_REGISTER_SIZE];

  if (FUNC1 ())
    {
      FUNC0 (regnum, print_all);
      return;
    }

  for (i = 0; i < numregs; i++)
    {
      /* Decide between printing all regs, non-float / vector regs, or
         specific reg.  */
      if (regnum == -1)
	{
	  if (print_all)
	    {
	      if (!FUNC13 (gdbarch, i, all_reggroup))
		continue;
	    }
	  else
	    {
	      if (!FUNC13 (gdbarch, i, general_reggroup))
		continue;
	    }
	}
      else
	{
	  if (i != regnum)
	    continue;
	}

      /* If the register name is empty, it is undefined for this
         processor, so don't display anything.  */
      if (FUNC7 (i) == NULL || *(FUNC7 (i)) == '\0')
	continue;

      FUNC11 (FUNC7 (i), file);
      FUNC15 (15 - FUNC17 (FUNC7 (i)), file);

      /* Get the data in raw format.  */
      if (! FUNC12 (frame, i, raw_buffer))
	{
	  FUNC10 (file, "*value not available*\n");
	  continue;
	}

      /* FIXME: cagney/2002-08-03: This code shouldn't be necessary.
         The function frame_register_read() should have returned the
         pre-cooked register so no conversion is necessary.  */
      /* Convert raw data to virtual format if necessary.  */
      if (FUNC3 ()
	  && FUNC2 (i))
	{
	  FUNC4 (i, FUNC16 (current_gdbarch, i),
				       raw_buffer, virtual_buffer);
	}
      else
	{
	  FUNC14 (virtual_buffer, raw_buffer,
		  FUNC6 (i));
	}

      /* If virtual format is floating, print it that way, and in raw
         hex.  */
      if (FUNC8 (FUNC16 (current_gdbarch, i)) == TYPE_CODE_FLT)
	{
	  int j;

	  FUNC18 (FUNC16 (current_gdbarch, i), virtual_buffer, 0, 0,
		     file, 0, 1, 0, Val_pretty_default);

	  FUNC10 (file, "\t(raw 0x");
	  for (j = 0; j < FUNC5 (i); j++)
	    {
	      int idx;
	      if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
		idx = j;
	      else
		idx = FUNC5 (i) - 1 - j;
	      FUNC10 (file, "%02x", (unsigned char) raw_buffer[idx]);
	    }
	  FUNC10 (file, ")");
	}
      else
	{
	  /* Print the register in hex.  */
	  FUNC18 (FUNC16 (current_gdbarch, i), virtual_buffer, 0, 0,
		     file, 'x', 1, 0, Val_pretty_default);
          /* If not a vector register, print it also according to its
             natural format.  */
	  if (FUNC9 (FUNC16 (current_gdbarch, i)) == 0)
	    {
	      FUNC10 (file, "\t");
	      FUNC18 (FUNC16 (current_gdbarch, i), virtual_buffer, 0, 0,
			 file, 0, 1, 0, Val_pretty_default);
	    }
	}

      FUNC10 (file, "\n");
    }
}