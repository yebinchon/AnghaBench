
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int * usbfs_dentry; } ;


 int fs_remove_file (int *) ;
 scalar_t__ num_buses ;
 int remove_special_files () ;

__attribute__((used)) static void usbfs_remove_bus(struct usb_bus *bus)
{
 if (bus->usbfs_dentry) {
  fs_remove_file (bus->usbfs_dentry);
  bus->usbfs_dentry = ((void*)0);
 }

 --num_buses;
 if (num_buses <= 0) {
  remove_special_files();
  num_buses = 0;
 }
}
