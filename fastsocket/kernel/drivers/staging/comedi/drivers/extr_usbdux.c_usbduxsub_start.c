
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct usbduxsub {TYPE_1__* interface; int usbdev; } ;
struct TYPE_2__ {int dev; } ;


 int EZTIMEOUT ;
 int USBDUXSUB_CPUCS ;
 int USBDUXSUB_FIRMWARE ;
 int VENDOR_DIR_OUT ;
 int dev_err (int *,char*) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int,scalar_t__*,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int usbduxsub_start(struct usbduxsub *usbduxsub)
{
 int errcode = 0;
 uint8_t local_transfer_buffer[16];


 local_transfer_buffer[0] = 0;
 errcode = usb_control_msg(usbduxsub->usbdev,

      usb_sndctrlpipe(usbduxsub->usbdev, 0),

      USBDUXSUB_FIRMWARE,

      VENDOR_DIR_OUT,

      USBDUXSUB_CPUCS,

      0x0000,

      local_transfer_buffer,

      1,

      EZTIMEOUT);
 if (errcode < 0) {
  dev_err(&usbduxsub->interface->dev,
   "comedi_: control msg failed (start)\n");
  return errcode;
 }
 return 0;
}
