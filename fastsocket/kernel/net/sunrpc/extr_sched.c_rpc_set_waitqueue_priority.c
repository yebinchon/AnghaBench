
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int priority; } ;


 int rpc_rotate_queue_owner (struct rpc_wait_queue*) ;

__attribute__((used)) static void rpc_set_waitqueue_priority(struct rpc_wait_queue *queue, int priority)
{
 if (queue->priority != priority) {

  rpc_rotate_queue_owner(queue);
  queue->priority = priority;
 }
}
