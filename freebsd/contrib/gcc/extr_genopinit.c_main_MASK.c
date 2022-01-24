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
 int FATAL_EXIT_CODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SUCCESS_EXIT_CODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int*,int*) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC8 (int argc, char **argv)
{
  rtx desc;

  progname = "genopinit";

  if (FUNC4 (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  FUNC5 ("/* Generated automatically by the program `genopinit'\n\
from the machine description file `md'.  */\n\n");

  FUNC5 ("#include \"config.h\"\n");
  FUNC5 ("#include \"system.h\"\n");
  FUNC5 ("#include \"coretypes.h\"\n");
  FUNC5 ("#include \"tm.h\"\n");
  FUNC5 ("#include \"rtl.h\"\n");
  FUNC5 ("#include \"flags.h\"\n");
  FUNC5 ("#include \"insn-config.h\"\n");
  FUNC5 ("#include \"recog.h\"\n");
  FUNC5 ("#include \"expr.h\"\n");
  FUNC5 ("#include \"optabs.h\"\n");
  FUNC5 ("#include \"reload.h\"\n\n");

  FUNC5 ("void\ninit_all_optabs (void)\n{\n");

  FUNC6 ("\
#ifdef FIXUNS_TRUNC_LIKE_FIX_TRUNC\n\
  int i, j;\n\
#endif\n");

  /* Read the machine description.  */

  while (1)
    {
      int line_no, insn_code_number = 0;

      desc = FUNC7 (&line_no, &insn_code_number);
      if (desc == NULL)
	break;

      if (FUNC0 (desc) == DEFINE_INSN || FUNC0 (desc) == DEFINE_EXPAND)
	FUNC3 (desc);
    }

  FUNC6 ("\
\n\
#ifdef FIXUNS_TRUNC_LIKE_FIX_TRUNC\n\
  /* This flag says the same insns that convert to a signed fixnum\n\
     also convert validly to an unsigned one.  */\n\
  for (i = 0; i < NUM_MACHINE_MODES; i++)\n\
    for (j = 0; j < NUM_MACHINE_MODES; j++)\n\
      ufixtrunc_optab->handlers[i][j].insn_code\n\
      = sfixtrunc_optab->handlers[i][j].insn_code;\n\
#endif\n\
}");

  FUNC2 (stdout);
  return (FUNC1 (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}