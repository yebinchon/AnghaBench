
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int hci_rev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hci_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_hci_revision(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct hci_dev *hdev = dev_get_drvdata(dev);
 return sprintf(buf, "%d\n", hdev->hci_rev);
}
