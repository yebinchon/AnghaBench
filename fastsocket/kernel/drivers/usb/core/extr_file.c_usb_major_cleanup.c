
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USB_MAJOR ;
 int unregister_chrdev (int ,char*) ;

void usb_major_cleanup(void)
{
 unregister_chrdev(USB_MAJOR, "usb");
}
