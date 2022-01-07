
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct hci_cp_add_sco {void* pkt_type; void* handle; } ;
struct hci_conn {int out; int pkt_type; int attempt; int state; struct hci_dev* hdev; } ;
typedef int cp ;
typedef int __u16 ;


 int BT_CONNECT ;
 int BT_DBG (char*,struct hci_conn*) ;
 int HCI_OP_ADD_SCO ;
 void* cpu_to_le16 (int ) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_add_sco*) ;

void hci_add_sco(struct hci_conn *conn, __u16 handle)
{
 struct hci_dev *hdev = conn->hdev;
 struct hci_cp_add_sco cp;

 BT_DBG("%p", conn);

 conn->state = BT_CONNECT;
 conn->out = 1;

 conn->attempt++;

 cp.handle = cpu_to_le16(handle);
 cp.pkt_type = cpu_to_le16(conn->pkt_type);

 hci_send_cmd(hdev, HCI_OP_ADD_SCO, sizeof(cp), &cp);
}
