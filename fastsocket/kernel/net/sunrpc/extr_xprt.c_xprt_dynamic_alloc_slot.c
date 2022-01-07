
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int num_reqs; int max_reqs; } ;
struct rpc_rqst {int dummy; } ;
typedef int gfp_t ;


 int EAGAIN ;
 int ENOMEM ;
 struct rpc_rqst* ERR_PTR (int ) ;
 int atomic_add_unless (int *,int,int ) ;
 int atomic_dec (int *) ;
 struct rpc_rqst* kzalloc (int,int ) ;

__attribute__((used)) static struct rpc_rqst *xprt_dynamic_alloc_slot(struct rpc_xprt *xprt, gfp_t gfp_flags)
{
 struct rpc_rqst *req = ERR_PTR(-EAGAIN);

 if (!atomic_add_unless(&xprt->num_reqs, 1, xprt->max_reqs))
  goto out;
 req = kzalloc(sizeof(struct rpc_rqst), gfp_flags);
 if (req != ((void*)0))
  goto out;
 atomic_dec(&xprt->num_reqs);
 req = ERR_PTR(-ENOMEM);
out:
 return req;
}
