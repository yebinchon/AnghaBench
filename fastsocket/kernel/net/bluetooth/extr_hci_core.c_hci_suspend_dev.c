
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;


 int HCI_DEV_SUSPEND ;
 int hci_notify (struct hci_dev*,int ) ;

int hci_suspend_dev(struct hci_dev *hdev)
{
 hci_notify(hdev, HCI_DEV_SUSPEND);
 return 0;
}
