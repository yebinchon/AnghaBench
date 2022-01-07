
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pid; struct TYPE_4__* next; int am_pseudo; } ;
typedef TYPE_1__ thread_info ;
typedef scalar_t__ pid_t ;
typedef scalar_t__ lwpid_t ;
struct TYPE_5__ {TYPE_1__* head; } ;


 TYPE_1__* find_thread_info (scalar_t__) ;
 scalar_t__ map_from_gdb_tid (int) ;
 TYPE_2__ thread_head ;

__attribute__((used)) static int
is_process_id (int pid)
{
  lwpid_t tid;
  thread_info *tinfo;
  pid_t this_pid;
  int this_pid_count;



  tid = map_from_gdb_tid (pid);
  if (tid <= 0)
    return 0;

  tinfo = find_thread_info (tid);



  if (!tinfo->am_pseudo)
    return 0;





  this_pid = tinfo->pid;
  this_pid_count = 0;
  for (tinfo = thread_head.head; tinfo; tinfo = tinfo->next)
    {
      if (tinfo->pid == this_pid)
 this_pid_count++;
    }

  return (this_pid_count == 1);
}
