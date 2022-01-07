
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int * debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,int *,int *,int *) ;
 int debugfs_remove (int *) ;
 int usb_debug_devices ;
 int * usb_debug_root ;
 int usbfs_devices_fops ;

__attribute__((used)) static int usb_debugfs_init(void)
{
 usb_debug_root = debugfs_create_dir("usb", ((void*)0));
 if (!usb_debug_root)
  return -ENOENT;

 usb_debug_devices = debugfs_create_file("devices", 0444,
      usb_debug_root, ((void*)0),
      &usbfs_devices_fops);
 if (!usb_debug_devices) {
  debugfs_remove(usb_debug_root);
  usb_debug_root = ((void*)0);
  return -ENOENT;
 }

 return 0;
}
