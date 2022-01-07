
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
typedef int gro_result_t ;


 int __napi_gro_receive_gr (struct napi_struct*,struct sk_buff*) ;

gro_result_t napi_gro_receive_gr(struct napi_struct *napi,
     struct sk_buff *skb)
{
 return __napi_gro_receive_gr(napi, skb);
}
