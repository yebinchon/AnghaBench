
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slic_rcvqueue {scalar_t__ count; scalar_t__ errors; struct sk_buff* head; } ;
struct slic_rcvbuf {int status; } ;
struct sk_buff {struct sk_buff* next; scalar_t__ head; } ;
struct adapter {TYPE_1__* netdev; struct slic_rcvqueue rcvqueue; } ;
struct TYPE_2__ {int dev; } ;


 int ASSERT (struct slic_rcvbuf*) ;
 int IRHDDR_SVALID ;
 scalar_t__ SLIC_RCVQ_FILLTHRESH ;
 int dev_err (int *,char*,struct slic_rcvqueue*,scalar_t__) ;
 int slic_rcvqueue_fill (struct adapter*) ;

__attribute__((used)) static struct sk_buff *slic_rcvqueue_getnext(struct adapter *adapter)
{
 struct slic_rcvqueue *rcvq = &adapter->rcvqueue;
 struct sk_buff *skb;
 struct slic_rcvbuf *rcvbuf;
 int count;

 if (rcvq->count) {
  skb = rcvq->head;
  rcvbuf = (struct slic_rcvbuf *)skb->head;
  ASSERT(rcvbuf);

  if (rcvbuf->status & IRHDDR_SVALID) {
   rcvq->head = rcvq->head->next;
   skb->next = ((void*)0);
   rcvq->count--;
  } else {
   skb = ((void*)0);
  }
 } else {
  dev_err(&adapter->netdev->dev,
   "RcvQ Empty!! rcvq[%p] count[%x]\n", rcvq, rcvq->count);
  skb = ((void*)0);
 }
 while (rcvq->count < SLIC_RCVQ_FILLTHRESH) {
  count = slic_rcvqueue_fill(adapter);
  if (!count)
   break;
 }
 if (skb)
  rcvq->errors = 0;
 return skb;
}
