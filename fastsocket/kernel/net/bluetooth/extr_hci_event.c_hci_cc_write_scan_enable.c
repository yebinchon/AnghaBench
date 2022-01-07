
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int flags; int name; } ;
typedef int __u8 ;


 int BT_DBG (char*,int ,int) ;
 int HCI_ISCAN ;
 int HCI_OP_WRITE_SCAN_ENABLE ;
 int HCI_PSCAN ;
 int SCAN_INQUIRY ;
 int SCAN_PAGE ;
 int clear_bit (int ,int *) ;
 int hci_req_complete (struct hci_dev*,int) ;
 void* hci_sent_cmd_data (struct hci_dev*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void hci_cc_write_scan_enable(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);
 void *sent;

 BT_DBG("%s status 0x%x", hdev->name, status);

 sent = hci_sent_cmd_data(hdev, HCI_OP_WRITE_SCAN_ENABLE);
 if (!sent)
  return;

 if (!status) {
  __u8 param = *((__u8 *) sent);

  clear_bit(HCI_PSCAN, &hdev->flags);
  clear_bit(HCI_ISCAN, &hdev->flags);

  if (param & SCAN_INQUIRY)
   set_bit(HCI_ISCAN, &hdev->flags);

  if (param & SCAN_PAGE)
   set_bit(HCI_PSCAN, &hdev->flags);
 }

 hci_req_complete(hdev, status);
}
