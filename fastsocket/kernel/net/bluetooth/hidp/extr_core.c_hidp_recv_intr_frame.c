
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char len; unsigned char* data; } ;
struct hidp_session {scalar_t__ hid; scalar_t__ input; } ;


 int BT_DBG (char*,...) ;
 unsigned char HIDP_DATA_RTYPE_INPUT ;
 unsigned char HIDP_TRANS_DATA ;
 int HID_INPUT_REPORT ;
 int hid_input_report (scalar_t__,int ,unsigned char*,unsigned char,int) ;
 int hidp_input_report (struct hidp_session*,struct sk_buff*) ;
 int hidp_set_timer (struct hidp_session*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void hidp_recv_intr_frame(struct hidp_session *session,
    struct sk_buff *skb)
{
 unsigned char hdr;

 BT_DBG("session %p skb %p len %d", session, skb, skb->len);

 hdr = skb->data[0];
 skb_pull(skb, 1);

 if (hdr == (HIDP_TRANS_DATA | HIDP_DATA_RTYPE_INPUT)) {
  hidp_set_timer(session);

  if (session->input)
   hidp_input_report(session, skb);

  if (session->hid) {
   hid_input_report(session->hid, HID_INPUT_REPORT, skb->data, skb->len, 1);
   BT_DBG("report len %d", skb->len);
  }
 } else {
  BT_DBG("Unsupported protocol header 0x%02x", hdr);
 }

 kfree_skb(skb);
}
