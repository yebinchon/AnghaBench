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
#define  ABSENCE_SET 139 
#define  AUTOMATA_OPTION 138 
#define  DEFINE_AUTOMATON 137 
#define  DEFINE_BYPASS 136 
#define  DEFINE_CPU_UNIT 135 
#define  DEFINE_INSN_RESERVATION 134 
#define  DEFINE_QUERY_CPU_UNIT 133 
#define  DEFINE_RESERVATION 132 
#define  EXCLUSION_SET 131 
 int FATAL_EXIT_CODE ; 
#define  FINAL_ABSENCE_SET 130 
#define  FINAL_PRESENCE_SET 129 
 int FUNC0 (int /*<<< orphan*/ *) ; 
#define  PRESENCE_SET 128 
 scalar_t__ SUCCESS_EXIT_CODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  decl_t ; 
 int /*<<< orphan*/  decls ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ have_error ; 
 scalar_t__ FUNC17 (int,char**) ; 
 int /*<<< orphan*/  FUNC18 (int,char**) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/ * FUNC20 (int*,int*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC21 () ; 

int
FUNC22 (int argc, char **argv)
{
  rtx desc;

  progname = "genautomata";

  if (FUNC17 (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  FUNC18 (argc, argv);
  while (1)
    {
      int lineno;
      int insn_code_number;

      desc = FUNC20 (&lineno, &insn_code_number);
      if (desc == NULL)
	break;

      switch (FUNC0 (desc))
	{
	case DEFINE_CPU_UNIT:
	  FUNC9 (desc);
	  break;

	case DEFINE_QUERY_CPU_UNIT:
	  FUNC15 (desc);
	  break;

	case DEFINE_BYPASS:
	  FUNC8 (desc);
	  break;

	case EXCLUSION_SET:
	  FUNC10 (desc);
	  break;

	case PRESENCE_SET:
	  FUNC14 (desc);
	  break;

	case FINAL_PRESENCE_SET:
	  FUNC12 (desc);
	  break;

	case ABSENCE_SET:
	  FUNC5 (desc);
	  break;

	case FINAL_ABSENCE_SET:
	  FUNC11 (desc);
	  break;

	case DEFINE_AUTOMATON:
	  FUNC7 (desc);
	  break;

	case AUTOMATA_OPTION:
	  FUNC6 (desc);
	  break;

	case DEFINE_RESERVATION:
	  FUNC16 (desc);
	  break;

	case DEFINE_INSN_RESERVATION:
	  FUNC13 (desc);
	  break;

	default:
	  break;
	}
    }

  if (have_error)
    return FATAL_EXIT_CODE;

  FUNC19 ("/* Generated automatically by the program `genautomata'\n"
	"   from the machine description file `md'.  */\n\n"
	"#include \"config.h\"\n"
	"#include \"system.h\"\n"
	"#include \"coretypes.h\"\n"
	"#include \"tm.h\"\n"
	"#include \"rtl.h\"\n"
	"#include \"tm_p.h\"\n"
	"#include \"insn-config.h\"\n"
	"#include \"recog.h\"\n"
	"#include \"regs.h\"\n"
	"#include \"real.h\"\n"
	"#include \"output.h\"\n"
	"#include \"insn-attr.h\"\n"
	"#include \"toplev.h\"\n"
	"#include \"flags.h\"\n"
	"#include \"function.h\"\n");

  if (FUNC1 (decl_t, decls) > 0)
    {
      FUNC2 ();
      FUNC21 ();
    }

  FUNC4 (stdout);
  return (FUNC3 (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}