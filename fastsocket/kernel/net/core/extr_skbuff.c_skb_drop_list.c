
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;


 int DPRINTK (char*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void skb_drop_list(struct sk_buff **listp)
{
 struct sk_buff *list = *listp;

 *listp = ((void*)0);

 do {
  struct sk_buff *this = list;
  list = list->next;
  DPRINTK("Drop frag skb 0x%p\n", this);
  kfree_skb(this);
 } while (list);
}
