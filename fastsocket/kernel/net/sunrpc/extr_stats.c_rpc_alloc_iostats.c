
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_iostats {int dummy; } ;
struct rpc_clnt {int cl_maxproc; } ;


 int GFP_KERNEL ;
 struct rpc_iostats* kcalloc (int ,int,int ) ;

struct rpc_iostats *rpc_alloc_iostats(struct rpc_clnt *clnt)
{
 return kcalloc(clnt->cl_maxproc, sizeof(struct rpc_iostats), GFP_KERNEL);
}
