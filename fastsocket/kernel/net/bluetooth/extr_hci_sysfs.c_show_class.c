
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int* dev_class; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hci_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static ssize_t show_class(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct hci_dev *hdev = dev_get_drvdata(dev);
 return sprintf(buf, "0x%.2x%.2x%.2x\n",
   hdev->dev_class[2], hdev->dev_class[1], hdev->dev_class[0]);
}
