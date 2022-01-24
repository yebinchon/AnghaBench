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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * signal_names ; 
 int /*<<< orphan*/  stderr ; 
 int sys_nsig ; 
 char** sys_siglist ; 

void
FUNC2 (int signo, char *message)
{
  if (signal_names == NULL)
    {
      FUNC1 ();
    }
  if ((signo <= 0) || (signo >= sys_nsig))
    {
      FUNC0 (stderr, "%s: unknown signal\n", message);
    }
  else
    {
      FUNC0 (stderr, "%s: %s\n", message, sys_siglist[signo]);
    }
}