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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC7 (int argc, char **argv)
{
  FUNC3 ();
  FUNC6 ();

  if (argc == 2 && argv[1][0] == '-' && argv[1][1] == 'h')
    FUNC5 ();
  else
    FUNC4 ();

  if (FUNC1 (stdout) || FUNC2 (stdout) || FUNC0 (stdout))
    return FATAL_EXIT_CODE;

  return SUCCESS_EXIT_CODE;
}