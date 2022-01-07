
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_read_bd_addr {int status; int bdaddr; } ;
struct hci_dev {int bdaddr; int name; } ;


 int BT_DBG (char*,int ,int ) ;
 int bacpy (int *,int *) ;
 int hci_req_complete (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_read_bd_addr(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_rp_read_bd_addr *rp = (void *) skb->data;

 BT_DBG("%s status 0x%x", hdev->name, rp->status);

 if (!rp->status)
  bacpy(&hdev->bdaddr, &rp->bdaddr);

 hci_req_complete(hdev, rp->status);
}
