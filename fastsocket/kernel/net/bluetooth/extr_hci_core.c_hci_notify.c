
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;


 int atomic_notifier_call_chain (int *,int,struct hci_dev*) ;
 int hci_notifier ;

__attribute__((used)) static void hci_notify(struct hci_dev *hdev, int event)
{
 atomic_notifier_call_chain(&hci_notifier, event, hdev);
}
