
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int nr; int owner; } ;
typedef int pid_t ;


 int RPC_BATCH_COUNT ;

__attribute__((used)) static void rpc_set_waitqueue_owner(struct rpc_wait_queue *queue, pid_t pid)
{
 queue->owner = pid;
 queue->nr = RPC_BATCH_COUNT;
}
