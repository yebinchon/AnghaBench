
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int dev_name; int name; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_OP_WRITE_LOCAL_NAME ;
 void* hci_sent_cmd_data (struct hci_dev*,int ) ;
 int memcpy (int ,void*,int) ;

__attribute__((used)) static void hci_cc_write_local_name(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);
 void *sent;

 BT_DBG("%s status 0x%x", hdev->name, status);

 if (status)
  return;

 sent = hci_sent_cmd_data(hdev, HCI_OP_WRITE_LOCAL_NAME);
 if (!sent)
  return;

 memcpy(hdev->dev_name, sent, 248);
}
