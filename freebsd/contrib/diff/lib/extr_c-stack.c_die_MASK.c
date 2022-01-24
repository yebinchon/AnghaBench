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
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  exit_failure ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 char* program_error_message ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* stack_overflow_message ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC7 (int signo)
{
  char const *message;
  FUNC4 (signo);
  message = signo ? program_error_message : stack_overflow_message;
  FUNC6 (STDERR_FILENO, program_name, FUNC5 (program_name));
  FUNC6 (STDERR_FILENO, ": ", 2);
  FUNC6 (STDERR_FILENO, message, FUNC5 (message));
  FUNC6 (STDERR_FILENO, "\n", 1);
  if (! signo)
    FUNC0 (exit_failure);
  FUNC3 (FUNC2 (), signo);
  FUNC1 ();
}