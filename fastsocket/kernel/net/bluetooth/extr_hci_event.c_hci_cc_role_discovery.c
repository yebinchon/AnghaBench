
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_role_discovery {scalar_t__ role; int handle; scalar_t__ status; } ;
struct hci_dev {int name; } ;
struct hci_conn {int link_mode; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_LM_MASTER ;
 int __le16_to_cpu (int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static void hci_cc_role_discovery(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_rp_role_discovery *rp = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%x", hdev->name, rp->status);

 if (rp->status)
  return;

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(rp->handle));
 if (conn) {
  if (rp->role)
   conn->link_mode &= ~HCI_LM_MASTER;
  else
   conn->link_mode |= HCI_LM_MASTER;
 }

 hci_dev_unlock(hdev);
}
