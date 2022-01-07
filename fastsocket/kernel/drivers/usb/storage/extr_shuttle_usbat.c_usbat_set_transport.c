
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbat_info {int devicetype; } ;
struct us_data {int transport; } ;




 int USB_STOR_TRANSPORT_ERROR ;
 int usbat_flash_transport ;
 int usbat_hp8200e_transport ;
 int usbat_identify_device (struct us_data*,struct usbat_info*) ;

__attribute__((used)) static int usbat_set_transport(struct us_data *us,
          struct usbat_info *info,
          int devicetype)
{

 if (!info->devicetype)
  info->devicetype = devicetype;

 if (!info->devicetype)
  usbat_identify_device(us, info);

 switch (info->devicetype) {
 default:
  return USB_STOR_TRANSPORT_ERROR;

 case 128:
  us->transport = usbat_hp8200e_transport;
  break;

 case 129:
  us->transport = usbat_flash_transport;
  break;
 }

 return 0;
}
