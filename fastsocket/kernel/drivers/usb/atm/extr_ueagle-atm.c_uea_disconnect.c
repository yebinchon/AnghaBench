
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {TYPE_2__* altsetting; } ;
struct usb_device {TYPE_4__* config; } ;
struct TYPE_7__ {int bNumInterfaces; } ;
struct TYPE_8__ {TYPE_3__ desc; } ;
struct TYPE_5__ {int bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;


 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uea_enters (struct usb_device*) ;
 int uea_info (struct usb_device*,char*) ;
 int uea_leaves (struct usb_device*) ;
 int uea_mutex ;
 int usbatm_usb_disconnect (struct usb_interface*) ;

__attribute__((used)) static void uea_disconnect(struct usb_interface *intf)
{
 struct usb_device *usb = interface_to_usbdev(intf);
 int ifnum = intf->altsetting->desc.bInterfaceNumber;
 uea_enters(usb);




 if (usb->config->desc.bNumInterfaces != 1 && ifnum == 0) {
  mutex_lock(&uea_mutex);
  usbatm_usb_disconnect(intf);
  mutex_unlock(&uea_mutex);
  uea_info(usb, "ADSL device removed\n");
 }

 uea_leaves(usb);
}
