
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int name; } ;
typedef int __u8 ;


 int BT_DBG (char*,int ,int ) ;
 int hci_req_complete (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_host_buffer_size(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);

 BT_DBG("%s status 0x%x", hdev->name, status);

 hci_req_complete(hdev, status);
}
