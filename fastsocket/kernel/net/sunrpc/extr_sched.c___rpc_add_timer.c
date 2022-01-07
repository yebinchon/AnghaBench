
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int list; int expires; } ;
struct rpc_wait_queue {TYPE_3__ timer_list; } ;
struct TYPE_4__ {int timer_list; scalar_t__ expires; } ;
struct TYPE_5__ {TYPE_1__ tk_wait; } ;
struct rpc_task {int tk_timeout; TYPE_2__ u; int tk_pid; } ;


 int HZ ;
 int dprintk (char*,int ,int) ;
 scalar_t__ jiffies ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int rpc_set_queue_timer (struct rpc_wait_queue*,scalar_t__) ;
 scalar_t__ time_before (scalar_t__,int ) ;

__attribute__((used)) static void
__rpc_add_timer(struct rpc_wait_queue *queue, struct rpc_task *task)
{
 if (!task->tk_timeout)
  return;

 dprintk("RPC: %5u setting alarm for %lu ms\n",
   task->tk_pid, task->tk_timeout * 1000 / HZ);

 task->u.tk_wait.expires = jiffies + task->tk_timeout;
 if (list_empty(&queue->timer_list.list) || time_before(task->u.tk_wait.expires, queue->timer_list.expires))
  rpc_set_queue_timer(queue, task->u.tk_wait.expires);
 list_add(&task->u.tk_wait.timer_list, &queue->timer_list.list);
}
