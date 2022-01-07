
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int signal; } ;
struct task_struct {TYPE_2__ pending; scalar_t__ exit_state; TYPE_1__* signal; } ;
struct TYPE_3__ {scalar_t__ group_stop_count; } ;


 int SIGKILL ;
 struct task_struct* next_thread (struct task_struct*) ;
 int sigaddset (int *,int ) ;
 int signal_wake_up (struct task_struct*,int) ;

void zap_other_threads(struct task_struct *p)
{
 struct task_struct *t;

 p->signal->group_stop_count = 0;

 for (t = next_thread(p); t != p; t = next_thread(t)) {



  if (t->exit_state)
   continue;


  sigaddset(&t->pending.signal, SIGKILL);
  signal_wake_up(t, 1);
 }
}
