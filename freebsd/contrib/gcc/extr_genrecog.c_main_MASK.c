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
struct decision_head {int dummy; } ;
typedef  int /*<<< orphan*/ * rtx ;

/* Variables and functions */
#define  DEFINE_INSN 132 
#define  DEFINE_PEEPHOLE2 131 
#define  DEFINE_PREDICATE 130 
#define  DEFINE_SPECIAL_PREDICATE 129 
#define  DEFINE_SPLIT 128 
 int FATAL_EXIT_CODE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PEEPHOLE2 ; 
 int /*<<< orphan*/  RECOG ; 
 int /*<<< orphan*/  SPLIT ; 
 scalar_t__ SUCCESS_EXIT_CODE ; 
 scalar_t__ error_count ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ have_error ; 
 scalar_t__ FUNC3 (int,char**) ; 
 struct decision_head FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct decision_head*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct decision_head*,struct decision_head*) ; 
 scalar_t__ next_insn_code ; 
 int /*<<< orphan*/  pattern_lineno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct decision_head*,int /*<<< orphan*/ ) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12 (int argc, char **argv)
{
  rtx desc;
  struct decision_head recog_tree, split_tree, peephole2_tree, h;

  progname = "genrecog";

  FUNC5 (&recog_tree, 0, sizeof recog_tree);
  FUNC5 (&split_tree, 0, sizeof split_tree);
  FUNC5 (&peephole2_tree, 0, sizeof peephole2_tree);

  if (FUNC3 (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  next_insn_code = 0;

  FUNC11 ();

  /* Read the machine description.  */

  while (1)
    {
      desc = FUNC10 (&pattern_lineno, &next_insn_code);
      if (desc == NULL)
	break;

      switch (FUNC0 (desc))
	{
	case DEFINE_PREDICATE:
	case DEFINE_SPECIAL_PREDICATE:
	  FUNC7 (desc);
	  break;

	case DEFINE_INSN:
	  h = FUNC4 (desc, RECOG);
	  FUNC6 (&recog_tree, &h);
	  break;

	case DEFINE_SPLIT:
	  h = FUNC4 (desc, SPLIT);
	  FUNC6 (&split_tree, &h);
	  break;

	case DEFINE_PEEPHOLE2:
	  h = FUNC4 (desc, PEEPHOLE2);
	  FUNC6 (&peephole2_tree, &h);

	default:
	  /* do nothing */;
	}
    }

  if (error_count || have_error)
    return FATAL_EXIT_CODE;

  FUNC9 ("\n\n");

  FUNC8 (&recog_tree, RECOG);
  FUNC8 (&split_tree, SPLIT);
  FUNC8 (&peephole2_tree, PEEPHOLE2);

  FUNC2 (stdout);
  return (FUNC1 (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}