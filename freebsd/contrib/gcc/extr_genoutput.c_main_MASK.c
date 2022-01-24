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
#define  DEFINE_ADDRESS_CONSTRAINT 136 
#define  DEFINE_CONSTRAINT 135 
#define  DEFINE_EXPAND 134 
#define  DEFINE_INSN 133 
#define  DEFINE_MEMORY_CONSTRAINT 132 
#define  DEFINE_PEEPHOLE 131 
#define  DEFINE_PEEPHOLE2 130 
#define  DEFINE_REGISTER_CONSTRAINT 129 
#define  DEFINE_SPLIT 128 
 int FATAL_EXIT_CODE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SUCCESS_EXIT_CODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ have_error ; 
 scalar_t__ FUNC7 (int,char**) ; 
 scalar_t__ next_code_number ; 
 scalar_t__ next_index_number ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 char* progname ; 
 int /*<<< orphan*/ * FUNC14 (int*,scalar_t__*) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC15 (int argc, char **argv)
{
  rtx desc;

  progname = "genoutput";

  if (FUNC7 (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  FUNC12 ();
  next_code_number = 0;
  next_index_number = 0;

  /* Read the machine description.  */

  while (1)
    {
      int line_no;

      desc = FUNC14 (&line_no, &next_code_number);
      if (desc == NULL)
	break;

      switch (FUNC0 (desc))
	{
	case DEFINE_INSN:
	  FUNC4 (desc, line_no);
	  break;

	case DEFINE_PEEPHOLE:
	  FUNC5 (desc, line_no);
	  break;

	case DEFINE_EXPAND:
	  FUNC3 (desc, line_no);
	  break;

	case DEFINE_SPLIT:
	case DEFINE_PEEPHOLE2:
	  FUNC6 (desc, line_no);
	  break;

#ifdef USE_MD_CONSTRAINTS
	case DEFINE_CONSTRAINT:
	case DEFINE_REGISTER_CONSTRAINT:
	case DEFINE_ADDRESS_CONSTRAINT:
	case DEFINE_MEMORY_CONSTRAINT:
	  note_constraint (desc, line_no);
	  break;
#endif

	default:
	  break;
	}
      next_index_number++;
    }

  FUNC13("\n\n");
  FUNC11 ();
  FUNC10 ();
  FUNC9 ();

  FUNC2 (stdout);
  return (FUNC1 (stdout) != 0 || have_error
	? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}