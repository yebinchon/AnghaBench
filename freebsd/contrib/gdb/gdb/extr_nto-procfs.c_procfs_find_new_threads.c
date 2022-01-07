
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int status ;
typedef int ptid_t ;
struct TYPE_3__ {int tid; } ;
typedef TYPE_1__ procfs_status ;
typedef int pid_t ;


 int DCMD_PROC_TIDSTATUS ;
 scalar_t__ EOK ;
 int add_thread (int ) ;
 int ctl_fd ;
 scalar_t__ devctl (int,int ,TYPE_1__*,int,int ) ;
 int in_thread_list (int ) ;
 int inferior_ptid ;
 int ptid_build (int ,int ,int) ;
 int ptid_get_pid (int ) ;

void
procfs_find_new_threads (void)
{
  procfs_status status;
  pid_t pid;
  ptid_t ptid;

  if (ctl_fd == -1)
    return;

  pid = ptid_get_pid (inferior_ptid);

  for (status.tid = 1;; ++status.tid)
    {
      if (devctl (ctl_fd, DCMD_PROC_TIDSTATUS, &status, sizeof (status), 0)
   != EOK && status.tid != 0)
 break;
      ptid = ptid_build (pid, 0, status.tid);
      if (!in_thread_list (ptid))
 add_thread (ptid);
    }
  return;
}
