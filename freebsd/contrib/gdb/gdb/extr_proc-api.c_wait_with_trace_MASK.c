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
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,...) ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ procfs_file ; 
 scalar_t__ procfs_trace ; 
 char* FUNC3 (scalar_t__) ; 
 scalar_t__ stdout ; 
 int FUNC4 (int*) ; 

pid_t
FUNC5 (int *wstat, char *file, int line)
{
  int ret, lstat = 0;

  FUNC2 ();
  if (procfs_trace)
    {
      if (info_verbose)
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "%s:%d -- ", file, line);
      FUNC1 (procfs_file ? procfs_file : stdout, 
	       "wait (line %d) ", line);
      if (procfs_file)
	FUNC0 (procfs_file);
    }
  errno = 0;
  ret = FUNC4 (&lstat);
  if (procfs_trace)
    {
      if (errno)
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "[wait FAILED! (%s)]\n", FUNC3 (errno));
      else
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "returned pid %d, status 0x%x\n", ret, lstat);
      if (procfs_file)
	FUNC0 (procfs_file);
    }
  if (wstat)
    *wstat = lstat;

  return ret;
}