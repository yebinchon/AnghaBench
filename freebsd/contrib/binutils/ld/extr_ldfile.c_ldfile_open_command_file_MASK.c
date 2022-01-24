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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 char const* ldfile_input_filename ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int lineno ; 
 int /*<<< orphan*/ * saved_script_handle ; 

void
FUNC5 (const char *name)
{
  FILE *ldlex_input_stack;
  ldlex_input_stack = FUNC3 (name, "");

  if (ldlex_input_stack == NULL)
    {
      FUNC1 (bfd_error_system_call);
      FUNC2 (FUNC0("%P%F: cannot open linker script file %s: %E\n"), name);
    }

  FUNC4 (ldlex_input_stack, name);

  ldfile_input_filename = name;
  lineno = 1;

  saved_script_handle = ldlex_input_stack;
}