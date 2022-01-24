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
 int /*<<< orphan*/  SUCCESS_EXIT_CODE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 char* version_string ; 

__attribute__((used)) static void
FUNC4 (void)
{
  FUNC2 (stdout, "gcov (GCC) %s\n", version_string);
  FUNC3 (stdout, "Copyright %s 2006 Free Software Foundation, Inc.\n",
	   FUNC0("(C)"));
  FUNC2 (stdout, "%s",
	   FUNC0("This is free software; see the source for copying conditions.\n"
	     "There is NO warranty; not even for MERCHANTABILITY or \n"
	     "FITNESS FOR A PARTICULAR PURPOSE.\n\n"));
  FUNC1 (SUCCESS_EXIT_CODE);
}