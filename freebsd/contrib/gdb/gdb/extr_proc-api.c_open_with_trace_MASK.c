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
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,...) ; 
 scalar_t__ info_verbose ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ procfs_file ; 
 scalar_t__ procfs_trace ; 
 char* FUNC4 (scalar_t__) ; 
 scalar_t__ stdout ; 

int
FUNC5 (char *filename, int mode, char *file, int line)
{
  int ret;

  FUNC3 ();
  errno = 0;
  ret = FUNC2 (filename, mode);
  if (procfs_trace)
    {
      if (info_verbose)
	FUNC1 (procfs_file ? procfs_file : stdout, 
		 "%s:%d -- ", file, line);

      if (errno)
	{
	  FUNC1 (procfs_file ? procfs_file : stdout, 
		   "[open FAILED! (%s) line %d]\\n", 
		   FUNC4 (errno), line);
	}
      else
	{
	  FUNC1 (procfs_file ? procfs_file : stdout, 
		   "%d = open (%s, ", ret, filename);
	  if (mode == O_RDONLY)
	    FUNC1 (procfs_file ? procfs_file : stdout, "O_RDONLY) %d\n",
		     line);
	  else if (mode == O_WRONLY)
	    FUNC1 (procfs_file ? procfs_file : stdout, "O_WRONLY) %d\n",
		     line);
	  else if (mode == O_RDWR)
	    FUNC1 (procfs_file ? procfs_file : stdout, "O_RDWR)   %d\n",
		     line);
	}
      if (procfs_file)
	FUNC0 (procfs_file);
    }

  return ret;
}