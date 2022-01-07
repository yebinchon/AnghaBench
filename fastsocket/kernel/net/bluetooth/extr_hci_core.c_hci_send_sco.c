
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; void* dev; } ;
struct hci_sco_hdr {scalar_t__ dlen; int handle; } ;
struct hci_dev {scalar_t__ sco_mtu; int name; } ;
struct hci_conn {int data_q; int handle; struct hci_dev* hdev; } ;
struct TYPE_2__ {int pkt_type; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int EINVAL ;
 int HCI_SCODATA_PKT ;
 int HCI_SCO_HDR_SIZE ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 int cpu_to_le16 (int ) ;
 int hci_sched_tx (struct hci_dev*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,struct hci_sco_hdr*,int ) ;
 int skb_push (struct sk_buff*,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_transport_header (struct sk_buff*) ;

int hci_send_sco(struct hci_conn *conn, struct sk_buff *skb)
{
 struct hci_dev *hdev = conn->hdev;
 struct hci_sco_hdr hdr;

 BT_DBG("%s len %d", hdev->name, skb->len);

 if (skb->len > hdev->sco_mtu) {
  kfree_skb(skb);
  return -EINVAL;
 }

 hdr.handle = cpu_to_le16(conn->handle);
 hdr.dlen = skb->len;

 skb_push(skb, HCI_SCO_HDR_SIZE);
 skb_reset_transport_header(skb);
 memcpy(skb_transport_header(skb), &hdr, HCI_SCO_HDR_SIZE);

 skb->dev = (void *) hdev;
 bt_cb(skb)->pkt_type = HCI_SCODATA_PKT;
 skb_queue_tail(&conn->data_q, skb);
 hci_sched_tx(hdev);
 return 0;
}
