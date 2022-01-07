
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;


 scalar_t__ GRO_DROP ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 scalar_t__ __napi_gro_receive_gr (struct napi_struct*,struct sk_buff*) ;

int napi_gro_receive(struct napi_struct *napi, struct sk_buff *skb)
{
 return __napi_gro_receive_gr(napi, skb) == GRO_DROP
  ? NET_RX_DROP : NET_RX_SUCCESS;
}
