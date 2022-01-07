
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct hci_proto {int (* recv_acldata ) (struct hci_conn*,struct sk_buff*,int ) ;} ;
struct TYPE_2__ {int acl_rx; } ;
struct hci_dev {int name; TYPE_1__ stat; } ;
struct hci_conn {int dummy; } ;
struct hci_acl_hdr {int handle; } ;
typedef int __u16 ;


 int BT_DBG (char*,int ,int ,int ,int ) ;
 int BT_ERR (char*,int ,int ) ;
 int HCI_ACL_HDR_SIZE ;
 size_t HCI_PROTO_L2CAP ;
 int __le16_to_cpu (int ) ;
 int hci_conn_enter_active_mode (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_flags (int ) ;
 int hci_handle (int ) ;
 struct hci_proto** hci_proto ;
 int kfree_skb (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int stub1 (struct hci_conn*,struct sk_buff*,int ) ;

__attribute__((used)) static inline void hci_acldata_packet(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_acl_hdr *hdr = (void *) skb->data;
 struct hci_conn *conn;
 __u16 handle, flags;

 skb_pull(skb, HCI_ACL_HDR_SIZE);

 handle = __le16_to_cpu(hdr->handle);
 flags = hci_flags(handle);
 handle = hci_handle(handle);

 BT_DBG("%s len %d handle 0x%x flags 0x%x", hdev->name, skb->len, handle, flags);

 hdev->stat.acl_rx++;

 hci_dev_lock(hdev);
 conn = hci_conn_hash_lookup_handle(hdev, handle);
 hci_dev_unlock(hdev);

 if (conn) {
  register struct hci_proto *hp;

  hci_conn_enter_active_mode(conn);


  if ((hp = hci_proto[HCI_PROTO_L2CAP]) && hp->recv_acldata) {
   hp->recv_acldata(conn, skb, flags);
   return;
  }
 } else {
  BT_ERR("%s ACL packet for unknown connection handle %d",
   hdev->name, handle);
 }

 kfree_skb(skb);
}
