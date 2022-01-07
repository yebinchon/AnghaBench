
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct hci_sco_hdr {int handle; } ;
struct hci_proto {int (* recv_scodata ) (struct hci_conn*,struct sk_buff*) ;} ;
struct TYPE_2__ {int sco_rx; } ;
struct hci_dev {int name; TYPE_1__ stat; } ;
struct hci_conn {int dummy; } ;
typedef int __u16 ;


 int BT_DBG (char*,int ,int ,int ) ;
 int BT_ERR (char*,int ,int ) ;
 size_t HCI_PROTO_SCO ;
 int HCI_SCO_HDR_SIZE ;
 int __le16_to_cpu (int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_proto** hci_proto ;
 int kfree_skb (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int stub1 (struct hci_conn*,struct sk_buff*) ;

__attribute__((used)) static inline void hci_scodata_packet(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_sco_hdr *hdr = (void *) skb->data;
 struct hci_conn *conn;
 __u16 handle;

 skb_pull(skb, HCI_SCO_HDR_SIZE);

 handle = __le16_to_cpu(hdr->handle);

 BT_DBG("%s len %d handle 0x%x", hdev->name, skb->len, handle);

 hdev->stat.sco_rx++;

 hci_dev_lock(hdev);
 conn = hci_conn_hash_lookup_handle(hdev, handle);
 hci_dev_unlock(hdev);

 if (conn) {
  register struct hci_proto *hp;


  if ((hp = hci_proto[HCI_PROTO_SCO]) && hp->recv_scodata) {
   hp->recv_scodata(conn, skb);
   return;
  }
 } else {
  BT_ERR("%s SCO packet for unknown connection handle %d",
   hdev->name, handle);
 }

 kfree_skb(skb);
}
