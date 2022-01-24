#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; } ;
struct TYPE_5__ {scalar_t__ num_threads; char* path; int tid; } ;
typedef  TYPE_1__ procfs_status ;
typedef  TYPE_1__ procfs_info ;
typedef  TYPE_1__ procfs_debuginfo ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  DCMD_PROC_INFO ; 
 int /*<<< orphan*/  DCMD_PROC_MAPDEBUG_BASE ; 
 int /*<<< orphan*/  DCMD_PROC_TIDSTATUS ; 
 scalar_t__ EOK ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 char* nto_procfs_path ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,scalar_t__,scalar_t__) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

void
FUNC13 (char *args, int from_tty)
{
  DIR *dp = NULL;
  struct dirent *dirp = NULL;
  int fd = -1;
  char buf[512];
  procfs_info *pidinfo = NULL;
  procfs_debuginfo *info = NULL;
  procfs_status *status = NULL;
  pid_t num_threads = 0;
  pid_t pid;
  char name[512];

  dp = FUNC6 (nto_procfs_path);
  if (dp == NULL)
    {
      FUNC4 (gdb_stderr, "failed to opendir \"%s\" - %d (%s)",
	      nto_procfs_path, errno, FUNC10 (errno));
      return;
    }

  /* Start scan at first pid.  */
  FUNC9 (dp);

  do
    {
      /* Get the right pid and procfs path for the pid.  */
      do
	{
	  dirp = FUNC8 (dp);
	  if (dirp == NULL)
	    {
	      FUNC2 (dp);
	      return;
	    }
	  FUNC11 (buf, 511, "%s/%s/as", nto_procfs_path, dirp->d_name);
	  pid = FUNC0 (dirp->d_name);
	}
      while (pid == 0);

      /* Open the procfs path. */
      fd = FUNC5 (buf, O_RDONLY);
      if (fd == -1)
	{
	  FUNC4 (gdb_stderr, "failed to open %s - %d (%s)\n",
		  buf, errno, FUNC10 (errno));
	  FUNC2 (dp);
	  return;
	}

      pidinfo = (procfs_info *) buf;
      if (FUNC3 (fd, DCMD_PROC_INFO, pidinfo, sizeof (buf), 0) != EOK)
	{
	  FUNC4 (gdb_stderr,
		  "devctl DCMD_PROC_INFO failed - %d (%s)\n", errno,
		  FUNC10 (errno));
	  break;
	}
      num_threads = pidinfo->num_threads;

      info = (procfs_debuginfo *) buf;
      if (FUNC3 (fd, DCMD_PROC_MAPDEBUG_BASE, info, sizeof (buf), 0) != EOK)
	FUNC12 (name, "unavailable");
      else
	FUNC12 (name, info->path);

      /* Collect state info on all the threads.  */
      status = (procfs_status *) buf;
      for (status->tid = 1; status->tid <= num_threads; status->tid++)
	{
	  if (FUNC3 (fd, DCMD_PROC_TIDSTATUS, status, sizeof (buf), 0) != EOK
	      && status->tid != 0)
	    break;
	  if (status->tid != 0)
	    FUNC7 ("%s - %d/%d\n", name, pid, status->tid);
	}
      FUNC1 (fd);
    }
  while (dirp != NULL);

  FUNC1 (fd);
  FUNC2 (dp);
  return;
}