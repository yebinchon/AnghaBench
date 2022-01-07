
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dev; int type; int name; } ;


 int BT_DBG (char*,struct hci_dev*,int ,int ) ;
 int device_del (int *) ;

void hci_unregister_sysfs(struct hci_dev *hdev)
{
 BT_DBG("%p name %s type %d", hdev, hdev->name, hdev->type);

 device_del(&hdev->dev);
}
