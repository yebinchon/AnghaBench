
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_rpc_endpoint {int dst_vers; } ;


 int be32_to_cpu (int ) ;

uint32_t msm_rpc_get_vers(struct msm_rpc_endpoint *ept)
{
 return be32_to_cpu(ept->dst_vers);
}
