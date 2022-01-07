
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tid ;
typedef int ptid_t ;
typedef int pid_t ;


 int DCMD_PROC_CURTHREAD ;
 scalar_t__ EOK ;
 int ctl_fd ;
 scalar_t__ devctl (int ,int ,int *,int,int ) ;
 int ptid_get_tid (int ) ;

__attribute__((used)) static int
procfs_thread_alive (ptid_t ptid)
{
  pid_t tid;

  tid = ptid_get_tid (ptid);
  if (devctl (ctl_fd, DCMD_PROC_CURTHREAD, &tid, sizeof (tid), 0) == EOK)
    return 1;
  return 0;
}
