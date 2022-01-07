
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tidinfo {int state; } ;
typedef int ptid_t ;


 struct tidinfo* procfs_thread_info (int,int) ;
 int ptid_get_pid (int ) ;
 int ptid_get_tid (int ) ;
 int snprintf (char*,int,char*,int) ;

char *
procfs_pid_to_str (ptid_t ptid)
{
  static char buf[1024];
  int pid, tid, n;
  struct tidinfo *tip;

  pid = ptid_get_pid (ptid);
  tid = ptid_get_tid (ptid);

  n = snprintf (buf, 1023, "process %d", pid);







  return buf;
}
