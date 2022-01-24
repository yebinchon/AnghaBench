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
 int SUCCESS_EXIT_CODE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,char const**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ errorcount ; 
 int /*<<< orphan*/  exit_after_options ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char const** save_argv ; 
 scalar_t__ sorrycount ; 

int
FUNC4 (unsigned int argc, const char **argv)
{
  save_argv = argv;

  /* Initialization of GCC's environment, and diagnostics.  */
  FUNC2 (argv[0]);

  /* Parse the options and do minimal processing; basically just
     enough to default flags appropriately.  */
  FUNC0 (argc, argv);

  FUNC3 ();

  /* Exit early if we can (e.g. -help).  */
  if (!exit_after_options)
    FUNC1 ();

  if (errorcount || sorrycount)
    return (FATAL_EXIT_CODE);

  return (SUCCESS_EXIT_CODE);
}