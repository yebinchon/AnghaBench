
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct inf {int dummy; } ;
typedef int ptid_t ;


 int PIDGET (int ) ;
 struct inf* current_inferior ;
 struct proc* inf_tid_to_thread (struct inf*,int) ;
 char* proc_string (struct proc*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static char *
gnu_pid_to_str (ptid_t ptid)
{
  struct inf *inf = current_inferior;
  int tid = PIDGET (ptid);
  struct proc *thread = inf_tid_to_thread (inf, tid);

  if (thread)
    return proc_string (thread);
  else
    {
      static char tid_str[80];
      sprintf (tid_str, "bogus thread id %d", tid);
      return tid_str;
    }
}
