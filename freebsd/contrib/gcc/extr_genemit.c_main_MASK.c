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
#define  DEFINE_EXPAND 131 
#define  DEFINE_INSN 130 
#define  DEFINE_PEEPHOLE2 129 
#define  DEFINE_SPLIT 128 
 int FATAL_EXIT_CODE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SUCCESS_EXIT_CODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,char**) ; 
 scalar_t__ insn_code_number ; 
 scalar_t__ insn_index_number ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/ * FUNC10 (int*,scalar_t__*) ; 
 char* read_rtx_filename ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC11 (int argc, char **argv)
{
  rtx desc;

  progname = "genemit";

  if (FUNC6 (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  /* Assign sequential codes to all entries in the machine description
     in parallel with the tables in insn-output.c.  */

  insn_code_number = 0;
  insn_index_number = 0;

  FUNC9 ("/* Generated automatically by the program `genemit'\n\
from the machine description file `md'.  */\n\n");

  FUNC9 ("#include \"config.h\"\n");
  FUNC9 ("#include \"system.h\"\n");
  FUNC9 ("#include \"coretypes.h\"\n");
  FUNC9 ("#include \"tm.h\"\n");
  FUNC9 ("#include \"rtl.h\"\n");
  FUNC9 ("#include \"tm_p.h\"\n");
  FUNC9 ("#include \"function.h\"\n");
  FUNC9 ("#include \"expr.h\"\n");
  FUNC9 ("#include \"optabs.h\"\n");
  FUNC9 ("#include \"real.h\"\n");
  FUNC9 ("#include \"flags.h\"\n");
  FUNC9 ("#include \"output.h\"\n");
  FUNC9 ("#include \"insn-config.h\"\n");
  FUNC9 ("#include \"hard-reg-set.h\"\n");
  FUNC9 ("#include \"recog.h\"\n");
  FUNC9 ("#include \"resource.h\"\n");
  FUNC9 ("#include \"reload.h\"\n");
  FUNC9 ("#include \"toplev.h\"\n");
  FUNC9 ("#include \"tm-constrs.h\"\n");
  FUNC9 ("#include \"ggc.h\"\n\n");
  FUNC9 ("#include \"basic-block.h\"\n\n");
  FUNC9 ("#define FAIL return (end_sequence (), _val)\n");
  FUNC9 ("#define DONE return (_val = get_insns (), end_sequence (), _val)\n\n");

  /* Read the machine description.  */

  while (1)
    {
      int line_no;

      desc = FUNC10 (&line_no, &insn_code_number);
      if (desc == NULL)
	break;

      switch (FUNC0 (desc))
	{
	case DEFINE_INSN:
	  FUNC4 (desc, line_no);
	  break;

	case DEFINE_EXPAND:
	  FUNC9 ("/* %s:%d */\n", read_rtx_filename, line_no);
	  FUNC3 (desc);
	  break;

	case DEFINE_SPLIT:
	  FUNC9 ("/* %s:%d */\n", read_rtx_filename, line_no);
	  FUNC5 (desc);
	  break;

	case DEFINE_PEEPHOLE2:
	  FUNC9 ("/* %s:%d */\n", read_rtx_filename, line_no);
	  FUNC5 (desc);
	  break;

	default:
	  break;
	}
      ++insn_index_number;
    }

  /* Write out the routines to add CLOBBERs to a pattern and say whether they
     clobber a hard reg.  */
  FUNC7 ();
  FUNC8 ();

  FUNC2 (stdout);
  return (FUNC1 (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}