
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int speed; } ;


 unsigned int FS_BLOCK ;
 unsigned int HS_BLOCK ;
 unsigned int SS_BLOCK ;







__attribute__((used)) static unsigned int xhci_get_block_size(struct usb_device *udev)
{
 switch (udev->speed) {
 case 131:
 case 133:
  return FS_BLOCK;
 case 132:
  return HS_BLOCK;
 case 130:
  return SS_BLOCK;
 case 129:
 case 128:
 default:

  return 1;
 }
}
