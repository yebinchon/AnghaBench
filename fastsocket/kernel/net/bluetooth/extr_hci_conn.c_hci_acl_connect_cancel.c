
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_cp_create_conn_cancel {int bdaddr; } ;
struct hci_conn {TYPE_1__* hdev; int dst; } ;
typedef int cp ;
struct TYPE_2__ {int hci_ver; } ;


 int BT_DBG (char*,struct hci_conn*) ;
 int HCI_OP_CREATE_CONN_CANCEL ;
 int bacpy (int *,int *) ;
 int hci_send_cmd (TYPE_1__*,int ,int,struct hci_cp_create_conn_cancel*) ;

__attribute__((used)) static void hci_acl_connect_cancel(struct hci_conn *conn)
{
 struct hci_cp_create_conn_cancel cp;

 BT_DBG("%p", conn);

 if (conn->hdev->hci_ver < 2)
  return;

 bacpy(&cp.bdaddr, &conn->dst);
 hci_send_cmd(conn->hdev, HCI_OP_CREATE_CONN_CANCEL, sizeof(cp), &cp);
}
