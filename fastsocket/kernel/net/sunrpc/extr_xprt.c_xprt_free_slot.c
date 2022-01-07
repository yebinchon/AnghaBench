
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int reserve_lock; int backlog; int free; } ;
struct rpc_rqst {int rq_list; } ;


 int list_add (int *,int *) ;
 int memset (struct rpc_rqst*,int ,int) ;
 int rpc_wake_up_next (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xprt_dynamic_free_slot (struct rpc_xprt*,struct rpc_rqst*) ;

__attribute__((used)) static void xprt_free_slot(struct rpc_xprt *xprt, struct rpc_rqst *req)
{
 spin_lock(&xprt->reserve_lock);
 if (!xprt_dynamic_free_slot(xprt, req)) {
  memset(req, 0, sizeof(*req));
  list_add(&req->rq_list, &xprt->free);
 }
 rpc_wake_up_next(&xprt->backlog);
 spin_unlock(&xprt->reserve_lock);
}
