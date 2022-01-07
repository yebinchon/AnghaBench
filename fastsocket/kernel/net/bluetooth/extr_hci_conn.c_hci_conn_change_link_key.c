
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_cp_change_conn_link_key {int handle; } ;
struct hci_conn {int hdev; int handle; int pend; } ;
typedef int cp ;


 int BT_DBG (char*,struct hci_conn*) ;
 int HCI_CONN_AUTH_PEND ;
 int HCI_OP_CHANGE_CONN_LINK_KEY ;
 int cpu_to_le16 (int ) ;
 int hci_send_cmd (int ,int ,int,struct hci_cp_change_conn_link_key*) ;
 int test_and_set_bit (int ,int *) ;

int hci_conn_change_link_key(struct hci_conn *conn)
{
 BT_DBG("conn %p", conn);

 if (!test_and_set_bit(HCI_CONN_AUTH_PEND, &conn->pend)) {
  struct hci_cp_change_conn_link_key cp;
  cp.handle = cpu_to_le16(conn->handle);
  hci_send_cmd(conn->hdev, HCI_OP_CHANGE_CONN_LINK_KEY,
       sizeof(cp), &cp);
 }

 return 0;
}
