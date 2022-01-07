
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct hci_cp_setup_sync_conn {int handle; } ;
struct hci_conn {int state; struct hci_conn* link; } ;
typedef int __u8 ;
typedef int __u16 ;


 int BT_CLOSED ;
 int BT_DBG (char*,int ,int ) ;
 int HCI_OP_SETUP_SYNC_CONN ;
 int __le16_to_cpu (int ) ;
 int hci_conn_del (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_proto_connect_cfm (struct hci_conn*,int ) ;
 struct hci_cp_setup_sync_conn* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cs_setup_sync_conn(struct hci_dev *hdev, __u8 status)
{
 struct hci_cp_setup_sync_conn *cp;
 struct hci_conn *acl, *sco;
 __u16 handle;

 BT_DBG("%s status 0x%x", hdev->name, status);

 if (!status)
  return;

 cp = hci_sent_cmd_data(hdev, HCI_OP_SETUP_SYNC_CONN);
 if (!cp)
  return;

 handle = __le16_to_cpu(cp->handle);

 BT_DBG("%s handle %d", hdev->name, handle);

 hci_dev_lock(hdev);

 acl = hci_conn_hash_lookup_handle(hdev, handle);
 if (acl && (sco = acl->link)) {
  sco->state = BT_CLOSED;

  hci_proto_connect_cfm(sco, status);
  hci_conn_del(sco);
 }

 hci_dev_unlock(hdev);
}
