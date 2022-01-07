
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {int transport_lock; TYPE_1__* ops; } ;
struct rpc_task {int dummy; } ;
struct TYPE_2__ {int (* reserve_xprt ) (struct rpc_xprt*,struct rpc_task*) ;} ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct rpc_xprt*,struct rpc_task*) ;

__attribute__((used)) static inline int xprt_lock_write(struct rpc_xprt *xprt, struct rpc_task *task)
{
 int retval;

 spin_lock_bh(&xprt->transport_lock);
 retval = xprt->ops->reserve_xprt(xprt, task);
 spin_unlock_bh(&xprt->transport_lock);
 return retval;
}
