
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct hci_dev {scalar_t__ sco_cnt; int name; } ;
struct hci_conn {int sent; int data_q; } ;


 int BT_DBG (char*,struct sk_buff*,...) ;
 int ESCO_LINK ;
 struct hci_conn* hci_low_sent (struct hci_dev*,int ,int*) ;
 int hci_send_frame (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static inline void hci_sched_esco(struct hci_dev *hdev)
{
 struct hci_conn *conn;
 struct sk_buff *skb;
 int quote;

 BT_DBG("%s", hdev->name);

 while (hdev->sco_cnt && (conn = hci_low_sent(hdev, ESCO_LINK, &quote))) {
  while (quote-- && (skb = skb_dequeue(&conn->data_q))) {
   BT_DBG("skb %p len %d", skb, skb->len);
   hci_send_frame(skb);

   conn->sent++;
   if (conn->sent == ~0)
    conn->sent = 0;
  }
 }
}
