
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe_msg {scalar_t__ len; int list; } ;
struct rpc_inode {int flags; int waitq; int pipelen; int pipe; int queue_timeout; scalar_t__ nreaders; int * ops; } ;
struct inode {int i_lock; } ;


 int EPIPE ;
 struct rpc_inode* RPC_I (struct inode*) ;
 int RPC_PIPE_WAIT_FOR_OPEN ;
 int RPC_UPCALL_TIMEOUT ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int rpciod_workqueue ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

int
rpc_queue_upcall(struct inode *inode, struct rpc_pipe_msg *msg)
{
 struct rpc_inode *rpci = RPC_I(inode);
 int res = -EPIPE;

 spin_lock(&inode->i_lock);
 if (rpci->ops == ((void*)0))
  goto out;
 if (rpci->nreaders) {
  list_add_tail(&msg->list, &rpci->pipe);
  rpci->pipelen += msg->len;
  res = 0;
 } else if (rpci->flags & RPC_PIPE_WAIT_FOR_OPEN) {
  if (list_empty(&rpci->pipe))
   queue_delayed_work(rpciod_workqueue,
     &rpci->queue_timeout,
     RPC_UPCALL_TIMEOUT);
  list_add_tail(&msg->list, &rpci->pipe);
  rpci->pipelen += msg->len;
  res = 0;
 }
out:
 spin_unlock(&inode->i_lock);
 wake_up(&rpci->waitq);
 return res;
}
