
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rd_frame {int caddr; } ;
struct irlap_cb {int caddr; } ;


 int GFP_ATOMIC ;
 int PF_BIT ;
 int RD_RSP ;
 struct sk_buff* alloc_skb (int,int ) ;
 int irlap_queue_xmit (struct irlap_cb*,struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

void irlap_send_rd_frame(struct irlap_cb *self)
{
 struct sk_buff *tx_skb;
 struct rd_frame *frame;

 tx_skb = alloc_skb(sizeof(struct rd_frame), GFP_ATOMIC);
 if (!tx_skb)
  return;

 frame = (struct rd_frame *)skb_put(tx_skb, 2);

 frame->caddr = self->caddr;
 frame->caddr = RD_RSP | PF_BIT;

 irlap_queue_xmit(self, tx_skb);
}
