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
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int,char**) ; 
 scalar_t__ insn_elision ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int*,int*) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC8 (int argc, char **argv)
{
  rtx desc;

  progname = "gencodes";

  /* We need to see all the possibilities.  Elided insns may have
     direct references to CODE_FOR_xxx in C code.  */
  insn_elision = 0;

  if (FUNC5 (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  FUNC6 ("\
/* Generated automatically by the program `gencodes'\n\
   from the machine description file `md'.  */\n\
\n\
#ifndef GCC_INSN_CODES_H\n\
#define GCC_INSN_CODES_H\n\
\n\
enum insn_code {");

  /* Read the machine description.  */

  while (1)
    {
      int line_no;
      int insn_code_number;

      desc = FUNC7 (&line_no, &insn_code_number);
      if (desc == NULL)
	break;

      if (FUNC0 (desc) == DEFINE_INSN || FUNC0 (desc) == DEFINE_EXPAND)
	FUNC4 (desc, insn_code_number);
    }

  FUNC6 ("  CODE_FOR_nothing\n\
};\n\
\n\
#endif /* GCC_INSN_CODES_H */");

  if (FUNC2 (stdout) || FUNC3 (stdout) || FUNC1 (stdout))
    return FATAL_EXIT_CODE;

  return SUCCESS_EXIT_CODE;
}