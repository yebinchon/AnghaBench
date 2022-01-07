
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct usbduxsub {TYPE_1__* interface; int usbdev; } ;
struct TYPE_2__ {int dev; } ;


 int EZTIMEOUT ;
 int USBDUXSUB_FIRMWARE ;
 int VENDOR_DIR_OUT ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int usb_control_msg (int ,int ,int ,int ,unsigned int,int,int *,unsigned int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int usbduxsub_upload(struct usbduxsub *usbduxsub,
       uint8_t * local_transfer_buffer,
       unsigned int startAddr, unsigned int len)
{
 int errcode;

 errcode = usb_control_msg(usbduxsub->usbdev,
      usb_sndctrlpipe(usbduxsub->usbdev, 0),

      USBDUXSUB_FIRMWARE,

      VENDOR_DIR_OUT,

      startAddr,

      0x0000,

      local_transfer_buffer,

      len,

      EZTIMEOUT);
 dev_dbg(&usbduxsub->interface->dev, "comedi_: result=%d\n", errcode);
 if (errcode < 0) {
  dev_err(&usbduxsub->interface->dev, "comedi_: upload failed\n");
  return errcode;
 }
 return 0;
}
