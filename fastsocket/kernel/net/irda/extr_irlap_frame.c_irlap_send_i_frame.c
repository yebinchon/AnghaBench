
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; } ;
struct irlap_cb {int caddr; int vr; } ;


 int CMD_FRAME ;
 int irlap_queue_xmit (struct irlap_cb*,struct sk_buff*) ;

__attribute__((used)) static void irlap_send_i_frame(struct irlap_cb *self, struct sk_buff *skb,
          int command)
{

 skb->data[0] = self->caddr;
 skb->data[0] |= (command) ? CMD_FRAME : 0;


 skb->data[1] |= (self->vr << 5);

 irlap_queue_xmit(self, skb);
}
