
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
typedef scalar_t__ __u32 ;


 int EINVAL ;




 scalar_t__ VHCI_NPORTS ;
 int usbip_uerr (char*,int) ;

__attribute__((used)) static int valid_args(__u32 rhport, enum usb_device_speed speed)
{

 if ((rhport < 0) || (rhport >= VHCI_NPORTS)) {
  usbip_uerr("port %u\n", rhport);
  return -EINVAL;
 }


 switch (speed) {
 case 129:
 case 131:
 case 130:
 case 128:
  break;
 default:
  usbip_uerr("speed %d\n", speed);
  return -EINVAL;
 }

 return 0;
}
