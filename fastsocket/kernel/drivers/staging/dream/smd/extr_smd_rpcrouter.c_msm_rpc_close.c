
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_rpc_endpoint {int dummy; } ;


 int msm_rpcrouter_destroy_local_endpoint (struct msm_rpc_endpoint*) ;

int msm_rpc_close(struct msm_rpc_endpoint *ept)
{
 return msm_rpcrouter_destroy_local_endpoint(ept);
}
