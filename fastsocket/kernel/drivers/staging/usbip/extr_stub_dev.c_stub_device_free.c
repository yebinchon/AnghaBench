
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_device {int dummy; } ;


 int EINVAL ;
 int kfree (struct stub_device*) ;
 int usbip_udbg (char*) ;

__attribute__((used)) static int stub_device_free(struct stub_device *sdev)
{
 if (!sdev)
  return -EINVAL;

 kfree(sdev);
 usbip_udbg("kfree udev ok\n");

 return 0;
}
