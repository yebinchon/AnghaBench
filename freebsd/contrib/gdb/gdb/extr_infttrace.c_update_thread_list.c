
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int seen; scalar_t__ pid; int tid; scalar_t__ am_pseudo; struct TYPE_3__* next; } ;
typedef TYPE_1__ thread_info ;
struct TYPE_4__ {TYPE_1__* head; } ;


 scalar_t__ debug_on ;
 int del_tthread (int) ;
 int printf (char*,int) ;
 TYPE_2__ thread_head ;
 scalar_t__ vfork_in_flight ;
 scalar_t__ vforking_child_pid ;

__attribute__((used)) static void
update_thread_list (void)
{
  thread_info *p;
  thread_info *chase;

  chase = ((void*)0);
  for (p = thread_head.head; p; p = p->next)
    {
      if ((!p->seen) && p->am_pseudo && vfork_in_flight
   && (p->pid != vforking_child_pid))
 p->seen = 1;

      if (!p->seen)
 {







   del_tthread (p->tid);
 }
    }
}
