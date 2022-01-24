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
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (char *args, int from_tty)
{
  if (FUNC2 ("Should GDB dump core? "))
    {
#ifdef __DJGPP__
      /* SIGQUIT by default is ignored, so use SIGABRT instead.  */
      signal (SIGABRT, SIG_DFL);
      kill (getpid (), SIGABRT);
#else
      FUNC3 (SIGQUIT, SIG_DFL);
      FUNC1 (FUNC0 (), SIGQUIT);
#endif
    }
}