
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; int class; int * type; } ;
struct hci_dev {int name; int parent; int type; struct device dev; } ;


 int BT_DBG (char*,struct hci_dev*,int ,int ) ;
 int bt_class ;
 int bt_host ;
 int dev_set_drvdata (struct device*,struct hci_dev*) ;
 int dev_set_name (struct device*,char*,int ) ;
 int device_register (struct device*) ;

int hci_register_sysfs(struct hci_dev *hdev)
{
 struct device *dev = &hdev->dev;
 int err;

 BT_DBG("%p name %s type %d", hdev, hdev->name, hdev->type);

 dev->type = &bt_host;
 dev->class = bt_class;
 dev->parent = hdev->parent;

 dev_set_name(dev, "%s", hdev->name);

 dev_set_drvdata(dev, hdev);

 err = device_register(dev);
 if (err < 0)
  return err;

 return 0;
}
