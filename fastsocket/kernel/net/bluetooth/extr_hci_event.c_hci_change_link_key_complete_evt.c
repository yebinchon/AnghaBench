
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_change_link_key_complete {int status; int handle; } ;
struct hci_dev {int name; } ;
struct hci_conn {int pend; int link_mode; } ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_CONN_AUTH_PEND ;
 int HCI_LM_SECURE ;
 int __le16_to_cpu (int ) ;
 int clear_bit (int ,int *) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_key_change_cfm (struct hci_conn*,int ) ;

__attribute__((used)) static inline void hci_change_link_key_complete_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_change_link_key_complete *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status %d", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (conn) {
  if (!ev->status)
   conn->link_mode |= HCI_LM_SECURE;

  clear_bit(HCI_CONN_AUTH_PEND, &conn->pend);

  hci_key_change_cfm(conn, ev->status);
 }

 hci_dev_unlock(hdev);
}
