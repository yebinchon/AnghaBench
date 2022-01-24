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

/* Variables and functions */
 int FATAL_EXIT_CODE ; 
 scalar_t__ SUCCESS_EXIT_CODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,char**) ; 
 int /*<<< orphan*/  print_md_constant ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6 (int argc, char **argv)
{
  progname = "genconstants";

  if (FUNC3 (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  /* Initializing the MD reader has the side effect of loading up
     the constants table that we wish to scan.  */

  FUNC4 ("/* Generated automatically by the program `genconstants'");
  FUNC4 ("   from the machine description file `md'.  */\n");
  FUNC4 ("#ifndef GCC_INSN_CONSTANTS_H");
  FUNC4 ("#define GCC_INSN_CONSTANTS_H\n");

  FUNC5 (print_md_constant, stdout);

  FUNC4 ("\n#endif /* GCC_INSN_CONSTANTS_H */");

  if (FUNC1 (stdout) || FUNC2 (stdout) || FUNC0 (stdout))
    return FATAL_EXIT_CODE;

  return SUCCESS_EXIT_CODE;
}