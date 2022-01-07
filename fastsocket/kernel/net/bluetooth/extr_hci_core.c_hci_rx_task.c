
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hci_dev {int name; int flags; int promisc; int rx_q; } ;
struct TYPE_2__ {int pkt_type; } ;


 int BT_DBG (char*,int ) ;


 int HCI_INIT ;
 int HCI_RAW ;

 scalar_t__ atomic_read (int *) ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 int hci_acldata_packet (struct hci_dev*,struct sk_buff*) ;
 int hci_event_packet (struct hci_dev*,struct sk_buff*) ;
 int hci_scodata_packet (struct hci_dev*,struct sk_buff*) ;
 int hci_send_to_sock (struct hci_dev*,struct sk_buff*) ;
 int hci_task_lock ;
 int kfree_skb (struct sk_buff*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hci_rx_task(unsigned long arg)
{
 struct hci_dev *hdev = (struct hci_dev *) arg;
 struct sk_buff *skb;

 BT_DBG("%s", hdev->name);

 read_lock(&hci_task_lock);

 while ((skb = skb_dequeue(&hdev->rx_q))) {
  if (atomic_read(&hdev->promisc)) {

   hci_send_to_sock(hdev, skb);
  }

  if (test_bit(HCI_RAW, &hdev->flags)) {
   kfree_skb(skb);
   continue;
  }

  if (test_bit(HCI_INIT, &hdev->flags)) {

   switch (bt_cb(skb)->pkt_type) {
   case 130:
   case 128:
    kfree_skb(skb);
    continue;
   }
  }


  switch (bt_cb(skb)->pkt_type) {
  case 129:
   hci_event_packet(hdev, skb);
   break;

  case 130:
   BT_DBG("%s ACL data packet", hdev->name);
   hci_acldata_packet(hdev, skb);
   break;

  case 128:
   BT_DBG("%s SCO data packet", hdev->name);
   hci_scodata_packet(hdev, skb);
   break;

  default:
   kfree_skb(skb);
   break;
  }
 }

 read_unlock(&hci_task_lock);
}
