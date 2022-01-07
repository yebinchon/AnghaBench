
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int cong; } ;
struct rpc_rqst {scalar_t__ rq_cong; } ;


 scalar_t__ RPC_CWNDSCALE ;
 int __xprt_lock_write_next_cong (struct rpc_xprt*) ;

__attribute__((used)) static void
__xprt_put_cong(struct rpc_xprt *xprt, struct rpc_rqst *req)
{
 if (!req->rq_cong)
  return;
 req->rq_cong = 0;
 xprt->cong -= RPC_CWNDSCALE;
 __xprt_lock_write_next_cong(xprt);
}
