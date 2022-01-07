
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int* features; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hci_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static ssize_t show_features(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct hci_dev *hdev = dev_get_drvdata(dev);

 return sprintf(buf, "0x%02x%02x%02x%02x%02x%02x%02x%02x\n",
    hdev->features[0], hdev->features[1],
    hdev->features[2], hdev->features[3],
    hdev->features[4], hdev->features[5],
    hdev->features[6], hdev->features[7]);
}
