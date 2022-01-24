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
 int /*<<< orphan*/  O_RDONLY ; 
 char* PROC_NAME_FMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  child_ops ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC6 (void)
{
#ifdef HAVE_OPTIONAL_PROC_FS
  char procname[32];
  int fd;

  /* If we have an optional /proc filesystem (e.g. under OSF/1),
     don't add ptrace support if we can access the running GDB via /proc.  */
#ifndef PROC_NAME_FMT
#define PROC_NAME_FMT "/proc/%05d"
#endif
  sprintf (procname, PROC_NAME_FMT, getpid ());
  fd = open (procname, O_RDONLY);
  if (fd >= 0)
    {
      close (fd);
      return;
    }
#endif

  FUNC3 ();
  FUNC0 (&child_ops);
}