
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int min_reqs; int num_reqs; } ;
struct rpc_rqst {int dummy; } ;


 scalar_t__ atomic_add_unless (int *,int,int ) ;
 int kfree (struct rpc_rqst*) ;

__attribute__((used)) static bool xprt_dynamic_free_slot(struct rpc_xprt *xprt, struct rpc_rqst *req)
{
 if (atomic_add_unless(&xprt->num_reqs, -1, xprt->min_reqs)) {
  kfree(req);
  return 1;
 }
 return 0;
}
