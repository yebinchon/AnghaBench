
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int maxpriority; } ;


 int rpc_set_waitqueue_owner (struct rpc_wait_queue*,int ) ;
 int rpc_set_waitqueue_priority (struct rpc_wait_queue*,int ) ;

__attribute__((used)) static void rpc_reset_waitqueue_priority(struct rpc_wait_queue *queue)
{
 rpc_set_waitqueue_priority(queue, queue->maxpriority);
 rpc_set_waitqueue_owner(queue, 0);
}
