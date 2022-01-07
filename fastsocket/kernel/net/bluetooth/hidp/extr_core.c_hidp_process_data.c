
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct hidp_session {int hid; int input; } ;


 int BT_DBG (char*,struct hidp_session*,struct sk_buff*,int ,unsigned char) ;




 int HIDP_HSHK_ERR_INVALID_PARAMETER ;
 int HIDP_TRANS_HANDSHAKE ;
 int HID_INPUT_REPORT ;
 int __hidp_send_ctrl_message (struct hidp_session*,int,int *,int ) ;
 int hid_input_report (int ,int ,int ,int ,int ) ;
 int hidp_input_report (struct hidp_session*,struct sk_buff*) ;
 int hidp_set_timer (struct hidp_session*) ;

__attribute__((used)) static void hidp_process_data(struct hidp_session *session, struct sk_buff *skb,
    unsigned char param)
{
 BT_DBG("session %p skb %p len %d param 0x%02x", session, skb, skb->len, param);

 switch (param) {
 case 130:
  hidp_set_timer(session);

  if (session->input)
   hidp_input_report(session, skb);

  if (session->hid)
   hid_input_report(session->hid, HID_INPUT_REPORT, skb->data, skb->len, 0);

  break;

 case 129:
 case 128:
 case 131:
  break;

 default:
  __hidp_send_ctrl_message(session,
   HIDP_TRANS_HANDSHAKE | HIDP_HSHK_ERR_INVALID_PARAMETER, ((void*)0), 0);
 }
}
