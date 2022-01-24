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
 int FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,...) ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ procfs_file ; 
 scalar_t__ procfs_trace ; 
 char* FUNC4 (scalar_t__) ; 
 scalar_t__ stdout ; 

int
FUNC5 (int fd, char *file, int line)
{
  int ret;

  FUNC3 ();
  errno = 0;
  ret = FUNC0 (fd);
  if (procfs_trace)
    {
      if (info_verbose)
	FUNC2 (procfs_file ? procfs_file : stdout, 
		 "%s:%d -- ", file, line);
      if (errno)
	FUNC2 (procfs_file ? procfs_file : stdout, 
		 "[close FAILED! (%s)]\n", FUNC4 (errno));
      else
	FUNC2 (procfs_file ? procfs_file : stdout, 
		 "%d = close (%d)\n", ret, fd);
      if (procfs_file)
	FUNC1 (procfs_file);
    }

  return ret;
}