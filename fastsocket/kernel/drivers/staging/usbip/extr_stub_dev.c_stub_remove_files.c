
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_usbip_debug ;
 int dev_attr_usbip_sockfd ;
 int dev_attr_usbip_status ;
 int device_remove_file (struct device*,int *) ;

__attribute__((used)) static void stub_remove_files(struct device *dev)
{
 device_remove_file(dev, &dev_attr_usbip_status);
 device_remove_file(dev, &dev_attr_usbip_sockfd);
 device_remove_file(dev, &dev_attr_usbip_debug);
}
