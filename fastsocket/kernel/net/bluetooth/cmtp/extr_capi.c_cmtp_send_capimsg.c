
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; int len; scalar_t__ cb; } ;
struct cmtp_session {int transmit; } ;
struct cmtp_scb {int id; int data; } ;


 int BT_DBG (char*,struct cmtp_session*,struct sk_buff*,int ) ;
 scalar_t__ CAPIMSG_COMMAND (int ) ;
 scalar_t__ CAPI_DATA_B3 ;
 int cmtp_schedule (struct cmtp_session*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void cmtp_send_capimsg(struct cmtp_session *session, struct sk_buff *skb)
{
 struct cmtp_scb *scb = (void *) skb->cb;

 BT_DBG("session %p skb %p len %d", session, skb, skb->len);

 scb->id = -1;
 scb->data = (CAPIMSG_COMMAND(skb->data) == CAPI_DATA_B3);

 skb_queue_tail(&session->transmit, skb);

 cmtp_schedule(session);
}
