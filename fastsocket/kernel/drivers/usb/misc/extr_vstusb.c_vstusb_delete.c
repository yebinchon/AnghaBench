
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vstusb_device {int usb_dev; } ;
struct kref {int dummy; } ;


 int kfree (struct vstusb_device*) ;
 struct vstusb_device* to_vst_dev (struct kref*) ;
 int usb_put_dev (int ) ;

__attribute__((used)) static void vstusb_delete(struct kref *kref)
{
 struct vstusb_device *vstdev = to_vst_dev(kref);

 usb_put_dev(vstdev->usb_dev);
 kfree(vstdev);
}
