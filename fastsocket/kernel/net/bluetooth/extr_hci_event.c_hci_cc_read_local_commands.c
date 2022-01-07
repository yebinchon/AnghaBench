
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_read_local_commands {int commands; scalar_t__ status; } ;
struct hci_dev {int commands; int name; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void hci_cc_read_local_commands(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_rp_read_local_commands *rp = (void *) skb->data;

 BT_DBG("%s status 0x%x", hdev->name, rp->status);

 if (rp->status)
  return;

 memcpy(hdev->commands, rp->commands, sizeof(hdev->commands));
}
