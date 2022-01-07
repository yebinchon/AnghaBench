
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_encrypt_change {scalar_t__ encrypt; int status; int handle; } ;
struct hci_dev {int name; } ;
struct hci_conn {scalar_t__ state; int pend; int link_mode; } ;


 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ,int ) ;
 int HCI_CONN_ENCRYPT_PEND ;
 int HCI_LM_AUTH ;
 int HCI_LM_ENCRYPT ;
 int __le16_to_cpu (int ) ;
 int clear_bit (int ,int *) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_conn_put (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_encrypt_cfm (struct hci_conn*,int ,scalar_t__) ;
 int hci_proto_connect_cfm (struct hci_conn*,int ) ;

__attribute__((used)) static inline void hci_encrypt_change_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_encrypt_change *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status %d", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (conn) {
  if (!ev->status) {
   if (ev->encrypt) {

    conn->link_mode |= HCI_LM_AUTH;
    conn->link_mode |= HCI_LM_ENCRYPT;
   } else
    conn->link_mode &= ~HCI_LM_ENCRYPT;
  }

  clear_bit(HCI_CONN_ENCRYPT_PEND, &conn->pend);

  if (conn->state == BT_CONFIG) {
   if (!ev->status)
    conn->state = BT_CONNECTED;

   hci_proto_connect_cfm(conn, ev->status);
   hci_conn_put(conn);
  } else
   hci_encrypt_cfm(conn, ev->status, ev->encrypt);
 }

 hci_dev_unlock(hdev);
}
