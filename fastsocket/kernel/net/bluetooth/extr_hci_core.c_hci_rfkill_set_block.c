
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;


 int BT_DBG (char*,struct hci_dev*,int ,int) ;
 int hci_dev_do_close (struct hci_dev*) ;

__attribute__((used)) static int hci_rfkill_set_block(void *data, bool blocked)
{
 struct hci_dev *hdev = data;

 BT_DBG("%p name %s blocked %d", hdev, hdev->name, blocked);

 if (!blocked)
  return 0;

 hci_dev_do_close(hdev);

 return 0;
}
