
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct irlap_cb {int vs; int va; int wx_list; scalar_t__ window_size; scalar_t__ window; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int * skb_peek (int *) ;
 scalar_t__ skb_queue_len (int *) ;

void irlap_update_nr_received(struct irlap_cb *self, int nr)
{
 struct sk_buff *skb = ((void*)0);
 int count = 0;
 if (nr == self->vs) {
  while ((skb = skb_dequeue(&self->wx_list)) != ((void*)0)) {
   dev_kfree_skb(skb);
  }

  self->va = nr - 1;
 } else {

  while ((skb_peek(&self->wx_list) != ((void*)0)) &&
         (((self->va+1) % 8) != nr))
  {
   skb = skb_dequeue(&self->wx_list);
   dev_kfree_skb(skb);

   self->va = (self->va + 1) % 8;
   count++;
  }
 }


 self->window = self->window_size - skb_queue_len(&self->wx_list);
}
