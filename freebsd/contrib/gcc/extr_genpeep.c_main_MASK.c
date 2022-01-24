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
typedef  int /*<<< orphan*/ * rtx ;

/* Variables and functions */
 scalar_t__ DEFINE_EXPAND ; 
 scalar_t__ DEFINE_INSN ; 
 scalar_t__ DEFINE_PEEPHOLE ; 
 scalar_t__ DEFINE_PEEPHOLE2 ; 
 scalar_t__ DEFINE_SPLIT ; 
 int FATAL_EXIT_CODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SUCCESS_EXIT_CODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,char**) ; 
 int /*<<< orphan*/  insn_code_number ; 
 int max_opno ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/ * FUNC6 (int*,int*) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC7 (int argc, char **argv)
{
  rtx desc;

  max_opno = -1;

  progname = "genpeep";

  if (FUNC4 (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  FUNC5 ("/* Generated automatically by the program `genpeep'\n\
from the machine description file `md'.  */\n\n");

  FUNC5 ("#include \"config.h\"\n");
  FUNC5 ("#include \"system.h\"\n");
  FUNC5 ("#include \"coretypes.h\"\n");
  FUNC5 ("#include \"tm.h\"\n");
  FUNC5 ("#include \"insn-config.h\"\n");
  FUNC5 ("#include \"rtl.h\"\n");
  FUNC5 ("#include \"tm_p.h\"\n");
  FUNC5 ("#include \"regs.h\"\n");
  FUNC5 ("#include \"output.h\"\n");
  FUNC5 ("#include \"real.h\"\n");
  FUNC5 ("#include \"recog.h\"\n");
  FUNC5 ("#include \"except.h\"\n");
  FUNC5 ("#include \"function.h\"\n");
  FUNC5 ("#include \"toplev.h\"\n");
  FUNC5 ("#include \"flags.h\"\n");
  FUNC5 ("#include \"tm-constrs.h\"\n\n");

  FUNC5 ("#ifdef HAVE_peephole\n");
  FUNC5 ("extern rtx peep_operand[];\n\n");
  FUNC5 ("#define operands peep_operand\n\n");

  FUNC5 ("rtx\npeephole (rtx ins1)\n{\n");
  FUNC5 ("  rtx insn ATTRIBUTE_UNUSED, x ATTRIBUTE_UNUSED, pat ATTRIBUTE_UNUSED;\n\n");

  /* Early out: no peepholes for insns followed by barriers.  */
  FUNC5 ("  if (NEXT_INSN (ins1)\n");
  FUNC5 ("      && BARRIER_P (NEXT_INSN (ins1)))\n");
  FUNC5 ("    return 0;\n\n");

  /* Read the machine description.  */

  while (1)
    {
      int line_no, rtx_number = 0;

      desc = FUNC6 (&line_no, &rtx_number);
      if (desc == NULL)
	break;

       if (FUNC0 (desc) == DEFINE_PEEPHOLE)
	{
	  FUNC3 (desc);
	  insn_code_number++;
	}
      if (FUNC0 (desc) == DEFINE_INSN
	  || FUNC0 (desc) == DEFINE_EXPAND
	  || FUNC0 (desc) == DEFINE_SPLIT
	  || FUNC0 (desc) == DEFINE_PEEPHOLE2)
	{
	  insn_code_number++;
	}
    }

  FUNC5 ("  return 0;\n}\n\n");

  if (max_opno == -1)
    max_opno = 1;

  FUNC5 ("rtx peep_operand[%d];\n", max_opno + 1);
  FUNC5 ("#endif\n");

  FUNC2 (stdout);
  return (FUNC1 (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}