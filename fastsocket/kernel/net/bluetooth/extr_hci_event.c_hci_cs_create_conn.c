
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct hci_cp_create_conn {int bdaddr; } ;
struct hci_conn {scalar_t__ state; int attempt; int out; int link_mode; } ;
typedef int __u8 ;


 int ACL_LINK ;
 scalar_t__ BT_CLOSED ;
 scalar_t__ BT_CONNECT ;
 scalar_t__ BT_CONNECT2 ;
 int BT_DBG (char*,int ,int,...) ;
 int BT_ERR (char*) ;
 int HCI_LM_MASTER ;
 int HCI_OP_CREATE_CONN ;
 int batostr (int *) ;
 struct hci_conn* hci_conn_add (struct hci_dev*,int ,int *) ;
 int hci_conn_del (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_proto_connect_cfm (struct hci_conn*,int) ;
 struct hci_cp_create_conn* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static inline void hci_cs_create_conn(struct hci_dev *hdev, __u8 status)
{
 struct hci_cp_create_conn *cp;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%x", hdev->name, status);

 cp = hci_sent_cmd_data(hdev, HCI_OP_CREATE_CONN);
 if (!cp)
  return;

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &cp->bdaddr);

 BT_DBG("%s bdaddr %s conn %p", hdev->name, batostr(&cp->bdaddr), conn);

 if (status) {
  if (conn && conn->state == BT_CONNECT) {
   if (status != 0x0c || conn->attempt > 2) {
    conn->state = BT_CLOSED;
    hci_proto_connect_cfm(conn, status);
    hci_conn_del(conn);
   } else
    conn->state = BT_CONNECT2;
  }
 } else {
  if (!conn) {
   conn = hci_conn_add(hdev, ACL_LINK, &cp->bdaddr);
   if (conn) {
    conn->out = 1;
    conn->link_mode |= HCI_LM_MASTER;
   } else
    BT_ERR("No memmory for new connection");
  }
 }

 hci_dev_unlock(hdev);
}
