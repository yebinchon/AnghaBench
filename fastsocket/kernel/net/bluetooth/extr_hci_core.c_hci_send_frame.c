
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ dev; } ;
struct hci_dev {int (* send ) (struct sk_buff*) ;int promisc; int name; } ;
struct TYPE_2__ {int pkt_type; } ;


 int BT_DBG (char*,int ,int ,int ) ;
 int ENODEV ;
 int __net_timestamp (struct sk_buff*) ;
 scalar_t__ atomic_read (int *) ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 int hci_send_to_sock (struct hci_dev*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int hci_send_frame(struct sk_buff *skb)
{
 struct hci_dev *hdev = (struct hci_dev *) skb->dev;

 if (!hdev) {
  kfree_skb(skb);
  return -ENODEV;
 }

 BT_DBG("%s type %d len %d", hdev->name, bt_cb(skb)->pkt_type, skb->len);

 if (atomic_read(&hdev->promisc)) {

  __net_timestamp(skb);

  hci_send_to_sock(hdev, skb);
 }


 skb_orphan(skb);

 return hdev->send(skb);
}
