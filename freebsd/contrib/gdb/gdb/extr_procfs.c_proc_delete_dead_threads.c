
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int thread_list; scalar_t__ status_valid; } ;
typedef TYPE_1__ procinfo ;


 int destroy_one_procinfo (int *,TYPE_1__*) ;
 int proc_get_status (TYPE_1__*) ;

int
proc_delete_dead_threads (procinfo *parent, procinfo *thread, void *ignore)
{
  if (thread && parent)
    {
      thread->status_valid = 0;
      if (!proc_get_status (thread))
 destroy_one_procinfo (&parent->thread_list, thread);
    }
  return 0;
}
