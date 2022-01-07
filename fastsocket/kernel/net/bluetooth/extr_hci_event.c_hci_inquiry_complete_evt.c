
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int flags; int name; } ;
typedef int __u8 ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_INQUIRY ;
 int clear_bit (int ,int *) ;
 int hci_conn_check_pending (struct hci_dev*) ;
 int hci_req_complete (struct hci_dev*,int ) ;

__attribute__((used)) static inline void hci_inquiry_complete_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);

 BT_DBG("%s status %d", hdev->name, status);

 clear_bit(HCI_INQUIRY, &hdev->flags);

 hci_req_complete(hdev, status);

 hci_conn_check_pending(hdev);
}
