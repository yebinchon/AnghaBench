
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove (int ) ;
 int usb_debug_devices ;
 int usb_debug_root ;

__attribute__((used)) static void usb_debugfs_cleanup(void)
{
 debugfs_remove(usb_debug_devices);
 debugfs_remove(usb_debug_root);
}
