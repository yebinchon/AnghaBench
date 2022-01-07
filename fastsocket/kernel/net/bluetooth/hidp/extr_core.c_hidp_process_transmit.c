
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct hidp_session {int intr_transmit; int intr_sock; int ctrl_transmit; int ctrl_sock; } ;


 int BT_DBG (char*,struct hidp_session*) ;
 scalar_t__ hidp_send_frame (int ,int ,int ) ;
 int hidp_set_timer (struct hidp_session*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;

__attribute__((used)) static void hidp_process_transmit(struct hidp_session *session)
{
 struct sk_buff *skb;

 BT_DBG("session %p", session);

 while ((skb = skb_dequeue(&session->ctrl_transmit))) {
  if (hidp_send_frame(session->ctrl_sock, skb->data, skb->len) < 0) {
   skb_queue_head(&session->ctrl_transmit, skb);
   break;
  }

  hidp_set_timer(session);
  kfree_skb(skb);
 }

 while ((skb = skb_dequeue(&session->intr_transmit))) {
  if (hidp_send_frame(session->intr_sock, skb->data, skb->len) < 0) {
   skb_queue_head(&session->intr_transmit, skb);
   break;
  }

  hidp_set_timer(session);
  kfree_skb(skb);
 }
}
