
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handled; } ;
typedef TYPE_1__ thread_info ;
typedef int lwpid_t ;


 TYPE_1__* add_tthread (int,int ) ;
 TYPE_1__* find_thread_info (int ) ;

__attribute__((used)) static void
set_handled (int pid, lwpid_t tid)
{
  thread_info *p;

  p = find_thread_info (tid);
  if (((void*)0) == p)
    p = add_tthread (pid, tid);

  p->handled = 1;
}
