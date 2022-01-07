
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct napi_struct {scalar_t__ gro_count; struct sk_buff* gro_list; int dev_list; } ;


 int kfree_skb (struct sk_buff*) ;
 int list_del_init (int *) ;
 int napi_free_frags (struct napi_struct*) ;

void netif_napi_del(struct napi_struct *napi)
{
 struct sk_buff *skb, *next;

 list_del_init(&napi->dev_list);
 napi_free_frags(napi);

 for (skb = napi->gro_list; skb; skb = next) {
  next = skb->next;
  skb->next = ((void*)0);
  kfree_skb(skb);
 }

 napi->gro_list = ((void*)0);
 napi->gro_count = 0;
}
