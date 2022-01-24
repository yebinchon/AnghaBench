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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 

__attribute__((used)) static void
FUNC5 (char *arg, int tempflag, int from_tty)
{
  char *cond_string = NULL;

  FUNC2 (&arg);

  /* The allowed syntax is:
     catch exec
     catch exec if <cond>

     First, check if there's an if clause. */
  cond_string = FUNC1 (&arg);

  if ((*arg != '\0') && !FUNC4 (*arg))
    FUNC3 ("Junk at end of arguments.");

  /* If this target supports it, create an exec catchpoint
     and enable reporting of such events. */
  FUNC0 (tempflag, cond_string);
}