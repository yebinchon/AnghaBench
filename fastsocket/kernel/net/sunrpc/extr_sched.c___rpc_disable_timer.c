
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int timer; int list; } ;
struct rpc_wait_queue {TYPE_3__ timer_list; } ;
struct TYPE_4__ {int timer_list; } ;
struct TYPE_5__ {TYPE_1__ tk_wait; } ;
struct rpc_task {scalar_t__ tk_timeout; TYPE_2__ u; int tk_pid; } ;


 int del_timer (int *) ;
 int dprintk (char*,int ) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static void
__rpc_disable_timer(struct rpc_wait_queue *queue, struct rpc_task *task)
{
 if (task->tk_timeout == 0)
  return;
 dprintk("RPC: %5u disabling timer\n", task->tk_pid);
 task->tk_timeout = 0;
 list_del(&task->u.tk_wait.timer_list);
 if (list_empty(&queue->timer_list.list))
  del_timer(&queue->timer_list.timer);
}
