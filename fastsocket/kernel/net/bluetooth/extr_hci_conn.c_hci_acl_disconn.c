
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_cp_disconnect {int reason; int handle; } ;
struct hci_conn {int hdev; int handle; int state; } ;
typedef int cp ;
typedef int __u8 ;


 int BT_DBG (char*,struct hci_conn*) ;
 int BT_DISCONN ;
 int HCI_OP_DISCONNECT ;
 int cpu_to_le16 (int ) ;
 int hci_send_cmd (int ,int ,int,struct hci_cp_disconnect*) ;

void hci_acl_disconn(struct hci_conn *conn, __u8 reason)
{
 struct hci_cp_disconnect cp;

 BT_DBG("%p", conn);

 conn->state = BT_DISCONN;

 cp.handle = cpu_to_le16(conn->handle);
 cp.reason = reason;
 hci_send_cmd(conn->hdev, HCI_OP_DISCONNECT, sizeof(cp), &cp);
}
