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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
#define  DEFINE_ADDRESS_CONSTRAINT 133 
#define  DEFINE_CONSTRAINT 132 
#define  DEFINE_MEMORY_CONSTRAINT 131 
#define  DEFINE_PREDICATE 130 
#define  DEFINE_REGISTER_CONSTRAINT 129 
#define  DEFINE_SPECIAL_PREDICATE 128 
 int FATAL_EXIT_CODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUCCESS_EXIT_CODE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ gen_constrs ; 
 scalar_t__ gen_header ; 
 scalar_t__ have_error ; 
 scalar_t__ FUNC5 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_option ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC9 (int*,int*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

int
FUNC13 (int argc, char **argv)
{
  rtx defn;
  int pattern_lineno, next_insn_code = 0;

  progname = argv[0];
  if (argc <= 1)
    FUNC1 ("no input file name");
  if (FUNC5 (argc, argv, parse_option) != SUCCESS_EXIT_CODE)
    return FATAL_EXIT_CODE;

  while ((defn = FUNC9 (&pattern_lineno, &next_insn_code)) != 0)
    switch (FUNC0 (defn))
      {
      case DEFINE_PREDICATE:
      case DEFINE_SPECIAL_PREDICATE:
	FUNC7 (defn, pattern_lineno);
	break;

      case DEFINE_CONSTRAINT:
      case DEFINE_MEMORY_CONSTRAINT:
      case DEFINE_ADDRESS_CONSTRAINT:
	FUNC6 (defn, pattern_lineno);
	break;

      case DEFINE_REGISTER_CONSTRAINT:
	FUNC8 (defn, pattern_lineno);
	break;

      default:
	break;
      }

  if (gen_header)
    FUNC12 ();
  else if (gen_constrs)
    FUNC11 ();
  else
    FUNC10 ();

  if (have_error || FUNC3 (stdout) || FUNC4 (stdout) || FUNC2 (stdout))
    return FATAL_EXIT_CODE;

  return SUCCESS_EXIT_CODE;
}