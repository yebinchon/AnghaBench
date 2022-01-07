
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_cp_auth_requested {int handle; } ;
struct hci_conn {scalar_t__ sec_level; int link_mode; int hdev; int handle; int pend; scalar_t__ auth_type; } ;
typedef int cp ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,struct hci_conn*) ;
 int HCI_CONN_AUTH_PEND ;
 int HCI_LM_AUTH ;
 int HCI_OP_AUTH_REQUESTED ;
 int cpu_to_le16 (int ) ;
 int hci_send_cmd (int ,int ,int,struct hci_cp_auth_requested*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int hci_conn_auth(struct hci_conn *conn, __u8 sec_level, __u8 auth_type)
{
 BT_DBG("conn %p", conn);

 if (sec_level > conn->sec_level)
  conn->sec_level = sec_level;
 else if (conn->link_mode & HCI_LM_AUTH)
  return 1;

 conn->auth_type = auth_type;

 if (!test_and_set_bit(HCI_CONN_AUTH_PEND, &conn->pend)) {
  struct hci_cp_auth_requested cp;
  cp.handle = cpu_to_le16(conn->handle);
  hci_send_cmd(conn->hdev, HCI_OP_AUTH_REQUESTED,
       sizeof(cp), &cp);
 }

 return 0;
}
