
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int flags; int name; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_ENCRYPT ;
 int HCI_OP_WRITE_ENCRYPT_MODE ;
 int clear_bit (int ,int *) ;
 int hci_req_complete (struct hci_dev*,scalar_t__) ;
 void* hci_sent_cmd_data (struct hci_dev*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void hci_cc_write_encrypt_mode(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);
 void *sent;

 BT_DBG("%s status 0x%x", hdev->name, status);

 sent = hci_sent_cmd_data(hdev, HCI_OP_WRITE_ENCRYPT_MODE);
 if (!sent)
  return;

 if (!status) {
  __u8 param = *((__u8 *) sent);

  if (param)
   set_bit(HCI_ENCRYPT, &hdev->flags);
  else
   clear_bit(HCI_ENCRYPT, &hdev->flags);
 }

 hci_req_complete(hdev, status);
}
