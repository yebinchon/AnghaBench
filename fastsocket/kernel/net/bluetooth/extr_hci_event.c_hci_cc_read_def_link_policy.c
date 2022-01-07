
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_read_def_link_policy {int policy; scalar_t__ status; } ;
struct hci_dev {int link_policy; int name; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int __le16_to_cpu (int ) ;

__attribute__((used)) static void hci_cc_read_def_link_policy(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_rp_read_def_link_policy *rp = (void *) skb->data;

 BT_DBG("%s status 0x%x", hdev->name, rp->status);

 if (rp->status)
  return;

 hdev->link_policy = __le16_to_cpu(rp->policy);
}
