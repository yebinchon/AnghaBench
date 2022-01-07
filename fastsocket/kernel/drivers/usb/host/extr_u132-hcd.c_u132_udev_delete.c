
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u132_udev {scalar_t__ enumeration; scalar_t__ usb_addr; int * usb_device; scalar_t__ udev_number; } ;
struct kref {int dummy; } ;


 struct u132_udev* kref_to_u132_udev (struct kref*) ;

__attribute__((used)) static void u132_udev_delete(struct kref *kref)
{
 struct u132_udev *udev = kref_to_u132_udev(kref);
 udev->udev_number = 0;
 udev->usb_device = ((void*)0);
 udev->usb_addr = 0;
 udev->enumeration = 0;
}
