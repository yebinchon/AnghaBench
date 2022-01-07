
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {scalar_t__ voice_setting; int tx_task; int (* notify ) (struct hci_dev*,int ) ;int name; } ;
typedef scalar_t__ __u8 ;
typedef scalar_t__ __u16 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_NOTIFY_VOICE_SETTING ;
 int HCI_OP_WRITE_VOICE_SETTING ;
 scalar_t__ get_unaligned_le16 (void*) ;
 void* hci_sent_cmd_data (struct hci_dev*,int ) ;
 int stub1 (struct hci_dev*,int ) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static void hci_cc_write_voice_setting(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);
 __u16 setting;
 void *sent;

 BT_DBG("%s status 0x%x", hdev->name, status);

 if (status)
  return;

 sent = hci_sent_cmd_data(hdev, HCI_OP_WRITE_VOICE_SETTING);
 if (!sent)
  return;

 setting = get_unaligned_le16(sent);

 if (hdev->voice_setting == setting)
  return;

 hdev->voice_setting = setting;

 BT_DBG("%s voice setting 0x%04x", hdev->name, setting);

 if (hdev->notify) {
  tasklet_disable(&hdev->tx_task);
  hdev->notify(hdev, HCI_NOTIFY_VOICE_SETTING);
  tasklet_enable(&hdev->tx_task);
 }
}
