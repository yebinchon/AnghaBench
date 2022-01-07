
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
typedef int gro_result_t ;


 int GRO_DROP ;
 int __napi_gro_receive (struct napi_struct*,struct sk_buff*) ;
 int napi_frags_finish (struct napi_struct*,struct sk_buff*,int ) ;
 struct sk_buff* napi_frags_skb (struct napi_struct*) ;

__attribute__((used)) static inline gro_result_t __napi_gro_frags_gr(struct napi_struct *napi)
{
 struct sk_buff *skb = napi_frags_skb(napi);

 if (!skb)
  return GRO_DROP;

 return napi_frags_finish(napi, skb, __napi_gro_receive(napi, skb));
}
