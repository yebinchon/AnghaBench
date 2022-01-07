
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int reserve_lock; } ;
struct rpc_task {int tk_status; scalar_t__ tk_timeout; int * tk_rqstp; struct rpc_xprt* tk_xprt; } ;


 int EAGAIN ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xprt_alloc_slot (struct rpc_task*) ;
 int xprt_lock_write (struct rpc_xprt*,struct rpc_task*) ;
 int xprt_release_write (struct rpc_xprt*,struct rpc_task*) ;

void xprt_reserve(struct rpc_task *task)
{
 struct rpc_xprt *xprt = task->tk_xprt;

 task->tk_status = 0;
 if (task->tk_rqstp != ((void*)0))
  return;






 task->tk_timeout = 0;
 task->tk_status = -EAGAIN;
 if (!xprt_lock_write(xprt, task))
  return;

 spin_lock(&xprt->reserve_lock);
 xprt_alloc_slot(task);
 spin_unlock(&xprt->reserve_lock);
 xprt_release_write(xprt, task);
}
