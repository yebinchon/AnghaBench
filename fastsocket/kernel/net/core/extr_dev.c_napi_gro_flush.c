
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct napi_struct {struct sk_buff* gro_list; scalar_t__ gro_count; } ;


 int napi_gro_complete (struct sk_buff*) ;

void napi_gro_flush(struct napi_struct *napi)
{
 struct sk_buff *skb, *next;

 for (skb = napi->gro_list; skb; skb = next) {
  next = skb->next;
  skb->next = ((void*)0);
  napi_gro_complete(skb);
 }

 napi->gro_count = 0;
 napi->gro_list = ((void*)0);
}
