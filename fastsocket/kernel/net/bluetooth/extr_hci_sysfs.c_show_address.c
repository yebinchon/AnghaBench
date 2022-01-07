
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int bdaddr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int bdaddr_t ;


 int baswap (int *,int *) ;
 char* batostr (int *) ;
 struct hci_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_address(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct hci_dev *hdev = dev_get_drvdata(dev);
 bdaddr_t bdaddr;
 baswap(&bdaddr, &hdev->bdaddr);
 return sprintf(buf, "%s\n", batostr(&bdaddr));
}
