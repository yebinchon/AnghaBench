
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_auth_complete {int status; int handle; } ;
struct hci_dev {scalar_t__ ssp_mode; int name; } ;
struct hci_cp_set_conn_encrypt {int encrypt; int handle; } ;
struct hci_conn {scalar_t__ state; scalar_t__ ssp_mode; int pend; int disc_timeout; int link_mode; } ;
typedef int cp ;


 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ,int ) ;
 int HCI_CONN_AUTH_PEND ;
 int HCI_CONN_ENCRYPT_PEND ;
 int HCI_DISCONN_TIMEOUT ;
 int HCI_LM_AUTH ;
 int HCI_OP_SET_CONN_ENCRYPT ;
 int __le16_to_cpu (int ) ;
 int clear_bit (int ,int *) ;
 int hci_auth_cfm (struct hci_conn*,int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_conn_hold (struct hci_conn*) ;
 int hci_conn_put (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_encrypt_cfm (struct hci_conn*,int ,int) ;
 int hci_proto_connect_cfm (struct hci_conn*,int ) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_set_conn_encrypt*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void hci_auth_complete_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_auth_complete *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status %d", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (conn) {
  if (!ev->status)
   conn->link_mode |= HCI_LM_AUTH;

  clear_bit(HCI_CONN_AUTH_PEND, &conn->pend);

  if (conn->state == BT_CONFIG) {
   if (!ev->status && hdev->ssp_mode > 0 &&
       conn->ssp_mode > 0) {
    struct hci_cp_set_conn_encrypt cp;
    cp.handle = ev->handle;
    cp.encrypt = 0x01;
    hci_send_cmd(hdev, HCI_OP_SET_CONN_ENCRYPT,
       sizeof(cp), &cp);
   } else {
    conn->state = BT_CONNECTED;
    hci_proto_connect_cfm(conn, ev->status);
    hci_conn_put(conn);
   }
  } else {
   hci_auth_cfm(conn, ev->status);

   hci_conn_hold(conn);
   conn->disc_timeout = HCI_DISCONN_TIMEOUT;
   hci_conn_put(conn);
  }

  if (test_bit(HCI_CONN_ENCRYPT_PEND, &conn->pend)) {
   if (!ev->status) {
    struct hci_cp_set_conn_encrypt cp;
    cp.handle = ev->handle;
    cp.encrypt = 0x01;
    hci_send_cmd(hdev, HCI_OP_SET_CONN_ENCRYPT,
       sizeof(cp), &cp);
   } else {
    clear_bit(HCI_CONN_ENCRYPT_PEND, &conn->pend);
    hci_encrypt_cfm(conn, ev->status, 0x00);
   }
  }
 }

 hci_dev_unlock(hdev);
}
