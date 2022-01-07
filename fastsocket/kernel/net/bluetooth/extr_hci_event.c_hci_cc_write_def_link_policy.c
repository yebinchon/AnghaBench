
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int link_policy; int name; } ;
typedef int __u8 ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_OP_WRITE_DEF_LINK_POLICY ;
 int get_unaligned_le16 (void*) ;
 int hci_req_complete (struct hci_dev*,int ) ;
 void* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_write_def_link_policy(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);
 void *sent;

 BT_DBG("%s status 0x%x", hdev->name, status);

 sent = hci_sent_cmd_data(hdev, HCI_OP_WRITE_DEF_LINK_POLICY);
 if (!sent)
  return;

 if (!status)
  hdev->link_policy = get_unaligned_le16(sent);

 hci_req_complete(hdev, status);
}
