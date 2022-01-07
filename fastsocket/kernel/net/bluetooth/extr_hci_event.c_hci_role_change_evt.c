
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_role_change {scalar_t__ role; int status; int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_conn {int pend; int link_mode; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ,int ) ;
 int HCI_CONN_RSWITCH_PEND ;
 int HCI_LM_MASTER ;
 int clear_bit (int ,int *) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_role_switch_cfm (struct hci_conn*,int ,scalar_t__) ;

__attribute__((used)) static inline void hci_role_change_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_role_change *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status %d", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (conn) {
  if (!ev->status) {
   if (ev->role)
    conn->link_mode &= ~HCI_LM_MASTER;
   else
    conn->link_mode |= HCI_LM_MASTER;
  }

  clear_bit(HCI_CONN_RSWITCH_PEND, &conn->pend);

  hci_role_switch_cfm(conn, ev->status, ev->role);
 }

 hci_dev_unlock(hdev);
}
