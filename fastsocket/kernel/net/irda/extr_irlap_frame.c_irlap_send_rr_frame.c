
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rr_frame {int control; int caddr; } ;
struct irlap_cb {int vr; int caddr; } ;


 int CMD_FRAME ;
 int GFP_ATOMIC ;
 int PF_BIT ;
 int RR ;
 struct sk_buff* alloc_skb (int,int ) ;
 int irlap_queue_xmit (struct irlap_cb*,struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

void irlap_send_rr_frame(struct irlap_cb *self, int command)
{
 struct sk_buff *tx_skb;
 struct rr_frame *frame;

 tx_skb = alloc_skb(sizeof(struct rr_frame), GFP_ATOMIC);
 if (!tx_skb)
  return;

 frame = (struct rr_frame *)skb_put(tx_skb, 2);

 frame->caddr = self->caddr;
 frame->caddr |= (command) ? CMD_FRAME : 0;

 frame->control = RR | PF_BIT | (self->vr << 5);

 irlap_queue_xmit(self, tx_skb);
}
