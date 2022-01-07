
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int voice_setting; } ;
struct hci_cp_setup_sync_conn {int retrans_effort; void* voice_setting; void* max_latency; void* rx_bandwidth; void* tx_bandwidth; void* pkt_type; void* handle; } ;
struct hci_conn {int out; int pkt_type; int attempt; int state; struct hci_dev* hdev; } ;
typedef int cp ;
typedef int __u16 ;


 int BT_CONNECT ;
 int BT_DBG (char*,struct hci_conn*) ;
 int HCI_OP_SETUP_SYNC_CONN ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_setup_sync_conn*) ;

void hci_setup_sync(struct hci_conn *conn, __u16 handle)
{
 struct hci_dev *hdev = conn->hdev;
 struct hci_cp_setup_sync_conn cp;

 BT_DBG("%p", conn);

 conn->state = BT_CONNECT;
 conn->out = 1;

 conn->attempt++;

 cp.handle = cpu_to_le16(handle);
 cp.pkt_type = cpu_to_le16(conn->pkt_type);

 cp.tx_bandwidth = cpu_to_le32(0x00001f40);
 cp.rx_bandwidth = cpu_to_le32(0x00001f40);
 cp.max_latency = cpu_to_le16(0xffff);
 cp.voice_setting = cpu_to_le16(hdev->voice_setting);
 cp.retrans_effort = 0xff;

 hci_send_cmd(hdev, HCI_OP_SETUP_SYNC_CONN, sizeof(cp), &cp);
}
