
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
struct sk_buff {int len; TYPE_2__ data_q; int handle; void* dev; struct sk_buff* next; struct hci_dev* hdev; } ;
struct hci_dev {int name; } ;
struct hci_conn {int len; TYPE_2__ data_q; int handle; void* dev; struct hci_conn* next; struct hci_dev* hdev; } ;
typedef int __u16 ;
struct TYPE_7__ {void* pkt_type; } ;
struct TYPE_5__ {struct sk_buff* frag_list; } ;


 int ACL_CONT ;
 int ACL_START ;
 int BT_DBG (char*,int ,struct sk_buff*,int) ;
 void* HCI_ACLDATA_PKT ;
 int __skb_queue_tail (TYPE_2__*,struct sk_buff*) ;
 TYPE_3__* bt_cb (struct sk_buff*) ;
 int hci_add_acl_hdr (struct sk_buff*,int ,int) ;
 int hci_sched_tx (struct hci_dev*) ;
 int skb_queue_tail (TYPE_2__*,struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int hci_send_acl(struct hci_conn *conn, struct sk_buff *skb, __u16 flags)
{
 struct hci_dev *hdev = conn->hdev;
 struct sk_buff *list;

 BT_DBG("%s conn %p flags 0x%x", hdev->name, conn, flags);

 skb->dev = (void *) hdev;
 bt_cb(skb)->pkt_type = HCI_ACLDATA_PKT;
 hci_add_acl_hdr(skb, conn->handle, flags | ACL_START);

 if (!(list = skb_shinfo(skb)->frag_list)) {

  BT_DBG("%s nonfrag skb %p len %d", hdev->name, skb, skb->len);

  skb_queue_tail(&conn->data_q, skb);
 } else {

  BT_DBG("%s frag %p len %d", hdev->name, skb, skb->len);

  skb_shinfo(skb)->frag_list = ((void*)0);


  spin_lock_bh(&conn->data_q.lock);

  __skb_queue_tail(&conn->data_q, skb);
  do {
   skb = list; list = list->next;

   skb->dev = (void *) hdev;
   bt_cb(skb)->pkt_type = HCI_ACLDATA_PKT;
   hci_add_acl_hdr(skb, conn->handle, flags | ACL_CONT);

   BT_DBG("%s frag %p len %d", hdev->name, skb, skb->len);

   __skb_queue_tail(&conn->data_q, skb);
  } while (list);

  spin_unlock_bh(&conn->data_q.lock);
 }

 hci_sched_tx(hdev);
 return 0;
}
