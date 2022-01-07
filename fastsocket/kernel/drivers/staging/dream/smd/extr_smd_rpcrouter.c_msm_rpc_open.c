
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_rpc_endpoint {int dummy; } ;


 int ENOMEM ;
 struct msm_rpc_endpoint* ERR_PTR (int ) ;
 int MKDEV (int ,int ) ;
 struct msm_rpc_endpoint* msm_rpcrouter_create_local_endpoint (int ) ;

struct msm_rpc_endpoint *msm_rpc_open(void)
{
 struct msm_rpc_endpoint *ept;

 ept = msm_rpcrouter_create_local_endpoint(MKDEV(0, 0));
 if (ept == ((void*)0))
  return ERR_PTR(-ENOMEM);

 return ept;
}
