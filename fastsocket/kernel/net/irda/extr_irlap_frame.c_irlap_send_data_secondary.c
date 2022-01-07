
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; } ;
struct irlap_cb {int vs; int window; int caddr; int ack_required; int wx_list; } ;


 int FALSE ;
 int GFP_ATOMIC ;
 int I_FRAME ;
 int RSP_FRAME ;
 int irlap_send_i_frame (struct irlap_cb*,struct sk_buff*,int ) ;
 int irlap_send_ui_frame (struct irlap_cb*,int ,int ,int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_get (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void irlap_send_data_secondary(struct irlap_cb *self, struct sk_buff *skb)
{
 struct sk_buff *tx_skb = ((void*)0);


 if (skb->data[1] == I_FRAME) {





  skb->data[1] = I_FRAME | (self->vs << 1);





  skb_get(skb);
  skb_queue_tail(&self->wx_list, skb);

  tx_skb = skb_clone(skb, GFP_ATOMIC);
  if (tx_skb == ((void*)0)) {
   return;
  }

  self->vs = (self->vs + 1) % 8;
  self->ack_required = FALSE;
  self->window -= 1;

  irlap_send_i_frame(self, tx_skb, RSP_FRAME);
 } else {
  irlap_send_ui_frame(self, skb_get(skb), self->caddr, RSP_FRAME);
  self->window -= 1;
 }
}
