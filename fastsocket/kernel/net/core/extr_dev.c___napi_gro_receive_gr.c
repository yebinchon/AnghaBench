
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
typedef int gro_result_t ;


 int __napi_gro_receive (struct napi_struct*,struct sk_buff*) ;
 int napi_skb_finish (int ,struct sk_buff*) ;
 int skb_gro_reset_offset (struct sk_buff*) ;

__attribute__((used)) static inline gro_result_t __napi_gro_receive_gr(struct napi_struct *napi,
       struct sk_buff *skb)
{
 skb_gro_reset_offset(skb);

 return napi_skb_finish(__napi_gro_receive(napi, skb), skb);
}
