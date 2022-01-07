
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_rcvqueue {scalar_t__ count; struct sk_buff* head; int * tail; } ;
struct sk_buff {struct sk_buff* next; } ;
struct adapter {struct slic_rcvqueue rcvqueue; } ;


 int dev_kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void slic_rcvqueue_free(struct adapter *adapter)
{
 struct slic_rcvqueue *rcvq = &adapter->rcvqueue;
 struct sk_buff *skb;

 while (rcvq->head) {
  skb = rcvq->head;
  rcvq->head = rcvq->head->next;
  dev_kfree_skb(skb);
 }
 rcvq->tail = ((void*)0);
 rcvq->head = ((void*)0);
 rcvq->count = 0;
}
