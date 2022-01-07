
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbatm_data {struct usb_interface* usb_intf; } ;
struct usb_interface {int dummy; } ;
struct atm_dev {int dummy; } ;


 int CXACRU_ALL_FILES (int ) ;
 int REMOVE ;

__attribute__((used)) static void cxacru_remove_device_files(struct usbatm_data *usbatm_instance,
  struct atm_dev *atm_dev)
{
 struct usb_interface *intf = usbatm_instance->usb_intf;



 CXACRU_ALL_FILES(REMOVE);

}
