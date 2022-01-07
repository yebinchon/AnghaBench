
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int * usbfs_dentry; } ;


 int fs_remove_file (int *) ;

__attribute__((used)) static void usbfs_remove_device(struct usb_device *dev)
{
 if (dev->usbfs_dentry) {
  fs_remove_file (dev->usbfs_dentry);
  dev->usbfs_dentry = ((void*)0);
 }
}
