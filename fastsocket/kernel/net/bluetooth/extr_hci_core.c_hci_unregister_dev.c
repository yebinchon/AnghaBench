
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {scalar_t__ rfkill; int * reassembly; int list; int type; int name; } ;


 int BT_DBG (char*,struct hci_dev*,int ,int ) ;
 int HCI_DEV_UNREG ;
 int __hci_dev_put (struct hci_dev*) ;
 int hci_dev_do_close (struct hci_dev*) ;
 int hci_dev_list_lock ;
 int hci_notify (struct hci_dev*,int ) ;
 int hci_unregister_sysfs (struct hci_dev*) ;
 int kfree_skb (int ) ;
 int list_del (int *) ;
 int rfkill_destroy (scalar_t__) ;
 int rfkill_unregister (scalar_t__) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int hci_unregister_dev(struct hci_dev *hdev)
{
 int i;

 BT_DBG("%p name %s type %d", hdev, hdev->name, hdev->type);

 write_lock_bh(&hci_dev_list_lock);
 list_del(&hdev->list);
 write_unlock_bh(&hci_dev_list_lock);

 hci_dev_do_close(hdev);

 for (i = 0; i < 3; i++)
  kfree_skb(hdev->reassembly[i]);

 hci_notify(hdev, HCI_DEV_UNREG);

 if (hdev->rfkill) {
  rfkill_unregister(hdev->rfkill);
  rfkill_destroy(hdev->rfkill);
 }

 hci_unregister_sysfs(hdev);

 __hci_dev_put(hdev);

 return 0;
}
