
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;


 scalar_t__ GRO_DROP ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 scalar_t__ __napi_gro_frags_gr (struct napi_struct*) ;

int napi_gro_frags(struct napi_struct *napi)
{
 return __napi_gro_frags_gr(napi) == GRO_DROP
  ? NET_RX_DROP : NET_RX_SUCCESS;
}
