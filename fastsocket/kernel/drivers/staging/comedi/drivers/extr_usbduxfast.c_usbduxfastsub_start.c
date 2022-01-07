
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxfastsub_s {int usbdev; } ;


 int EZTIMEOUT ;
 int USBDUXFASTSUB_CPUCS ;
 int USBDUXFASTSUB_FIRMWARE ;
 int VENDOR_DIR_OUT ;
 int printk (char*) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int,unsigned char*,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int usbduxfastsub_start(struct usbduxfastsub_s *udfs)
{
 int ret;
 unsigned char local_transfer_buffer[16];


 local_transfer_buffer[0] = 0;
 ret = usb_control_msg(udfs->usbdev, usb_sndctrlpipe(udfs->usbdev, 0), USBDUXFASTSUB_FIRMWARE,
         VENDOR_DIR_OUT,
         USBDUXFASTSUB_CPUCS,
         0x0000,
         local_transfer_buffer,
         1,
         EZTIMEOUT);
 if (ret < 0) {
  printk("comedi_: usbduxfast_: control msg failed (start)\n");
  return ret;
 }

 return 0;
}
