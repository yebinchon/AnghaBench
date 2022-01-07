
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dev {int dst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int bdaddr_t ;


 int baswap (int *,int *) ;
 char* batostr (int *) ;
 struct rfcomm_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_address(struct device *tty_dev, struct device_attribute *attr, char *buf)
{
 struct rfcomm_dev *dev = dev_get_drvdata(tty_dev);
 bdaddr_t bdaddr;
 baswap(&bdaddr, &dev->dst);
 return sprintf(buf, "%s\n", batostr(&bdaddr));
}
