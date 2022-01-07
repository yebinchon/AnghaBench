
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_wait_queue {int qlen; int lock; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int rpc_queue_empty(struct rpc_wait_queue *queue)
{
 int res;

 spin_lock_bh(&queue->lock);
 res = queue->qlen;
 spin_unlock_bh(&queue->lock);
 return (res == 0);
}
