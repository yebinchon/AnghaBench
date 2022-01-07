
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef int pid_t ;


 int PIDGET (int ) ;
 char* child_pid_to_str (int ) ;
 char* hppa_tid_to_str (int ) ;
 scalar_t__ is_process_id (int ) ;
 int pid_to_thread_id (int ) ;
 int sprintf (char*,char*,int) ;
 int strcat (char*,char*) ;

char *
hppa_pid_or_tid_to_str (ptid_t ptid)
{
  static char buf[100];
  pid_t id = PIDGET (ptid);


  if (is_process_id (id))
    return child_pid_to_str (ptid);


  sprintf (buf, "thread %d (", pid_to_thread_id (ptid));
  strcat (buf, hppa_tid_to_str (ptid));
  strcat (buf, ")\0");

  return buf;
}
