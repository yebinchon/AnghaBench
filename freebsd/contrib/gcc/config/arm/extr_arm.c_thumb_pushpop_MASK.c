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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ARM_EABI_UNWIND_TABLES ; 
 int LAST_LO_REGNUM ; 
 int LR_REGNUM ; 
 int PC_REGNUM ; 
 int /*<<< orphan*/  SP_REGNUM ; 
 scalar_t__ TARGET_BACKTRACE ; 
 scalar_t__ TARGET_INTERWORK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ current_function_calls_eh_return ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC8 (FILE *f, unsigned long mask, int push, int *cfa_offset,
	       unsigned long real_regs)
{
  int regno;
  int lo_mask = mask & 0xFF;
  int pushed_words = 0;

  FUNC6 (mask);

  if (lo_mask == 0 && !push && (mask & (1 << PC_REGNUM)))
    {
      /* Special case.  Do not generate a POP PC statement here, do it in
	 thumb_exit() */
      FUNC7 (f, -1);
      return;
    }

  if (ARM_EABI_UNWIND_TABLES && push)
    {
      FUNC5 (f, "\t.save\t{");
      for (regno = 0; regno < 15; regno++)
	{
	  if (real_regs & (1 << regno))
	    {
	      if (real_regs & ((1 << regno) -1))
		FUNC5 (f, ", ");
	      FUNC0 (f, "%r", regno);
	    }
	}
      FUNC5 (f, "}\n");
    }

  FUNC5 (f, "\t%s\t{", push ? "push" : "pop");

  /* Look at the low registers first.  */
  for (regno = 0; regno <= LAST_LO_REGNUM; regno++, lo_mask >>= 1)
    {
      if (lo_mask & 1)
	{
	  FUNC0 (f, "%r", regno);

	  if ((lo_mask & ~1) != 0)
	    FUNC5 (f, ", ");

	  pushed_words++;
	}
    }

  if (push && (mask & (1 << LR_REGNUM)))
    {
      /* Catch pushing the LR.  */
      if (mask & 0xFF)
	FUNC5 (f, ", ");

      FUNC0 (f, "%r", LR_REGNUM);

      pushed_words++;
    }
  else if (!push && (mask & (1 << PC_REGNUM)))
    {
      /* Catch popping the PC.  */
      if (TARGET_INTERWORK || TARGET_BACKTRACE
	  || current_function_calls_eh_return)
	{
	  /* The PC is never poped directly, instead
	     it is popped into r3 and then BX is used.  */
	  FUNC5 (f, "}\n");

	  FUNC7 (f, -1);

	  return;
	}
      else
	{
	  if (mask & 0xFF)
	    FUNC5 (f, ", ");

	  FUNC0 (f, "%r", PC_REGNUM);
	}
    }

  FUNC5 (f, "}\n");

  if (push && pushed_words && FUNC3 ())
    {
      char *l = FUNC1 ();
      int pushed_mask = real_regs;

      *cfa_offset += pushed_words * 4;
      FUNC2 (l, SP_REGNUM, *cfa_offset);

      pushed_words = 0;
      pushed_mask = real_regs;
      for (regno = 0; regno <= 14; regno++, pushed_mask >>= 1)
	{
	  if (pushed_mask & 1)
	    FUNC4 (l, regno, 4 * pushed_words++ - *cfa_offset);
	}
    }
}