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
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  exit_failure ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  xalloc_msg_memory_exhausted ; 

void
FUNC5 (void)
{
  if (&xalloc_fail_func)
    FUNC4) ();
  FUNC2 (exit_failure, 0, "%s", FUNC0(xalloc_msg_memory_exhausted));
  /* The `noreturn' cannot be given to error, since it may return if
     its first argument is 0.  To help compilers understand the
     xalloc_die does terminate, call abort.  */
  FUNC1 ();
}