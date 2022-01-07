
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_usbip_debug ;
 int dev_attr_usbip_sockfd ;
 int dev_attr_usbip_status ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;

__attribute__((used)) static int stub_add_files(struct device *dev)
{
 int err = 0;

 err = device_create_file(dev, &dev_attr_usbip_status);
 if (err)
  goto err_status;

 err = device_create_file(dev, &dev_attr_usbip_sockfd);
 if (err)
  goto err_sockfd;

 err = device_create_file(dev, &dev_attr_usbip_debug);
 if (err)
  goto err_debug;

 return 0;

err_debug:
 device_remove_file(dev, &dev_attr_usbip_sockfd);

err_sockfd:
 device_remove_file(dev, &dev_attr_usbip_status);

err_status:
 return err;
}
