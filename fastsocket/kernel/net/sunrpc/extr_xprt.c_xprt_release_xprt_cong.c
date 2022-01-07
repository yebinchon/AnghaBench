
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {struct rpc_task* snd_task; } ;
struct rpc_task {int dummy; } ;


 int __xprt_lock_write_next_cong (struct rpc_xprt*) ;
 int xprt_clear_locked (struct rpc_xprt*) ;

void xprt_release_xprt_cong(struct rpc_xprt *xprt, struct rpc_task *task)
{
 if (xprt->snd_task == task) {
  xprt_clear_locked(xprt);
  __xprt_lock_write_next_cong(xprt);
 }
}
