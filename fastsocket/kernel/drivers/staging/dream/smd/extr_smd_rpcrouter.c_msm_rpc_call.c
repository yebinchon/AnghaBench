
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_rpc_endpoint {int dummy; } ;


 int msm_rpc_call_reply (struct msm_rpc_endpoint*,int ,void*,int,int *,int ,long) ;

int msm_rpc_call(struct msm_rpc_endpoint *ept, uint32_t proc,
   void *_request, int request_size,
   long timeout)
{
 return msm_rpc_call_reply(ept, proc,
      _request, request_size,
      ((void*)0), 0, timeout);
}
