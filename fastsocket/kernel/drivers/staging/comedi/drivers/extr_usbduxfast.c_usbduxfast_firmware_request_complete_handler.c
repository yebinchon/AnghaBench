
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxfastsub_s {struct usb_device* usbdev; } ;
struct usb_device {int dev; } ;
struct firmware {int size; int data; } ;


 int BOARDNAME ;
 int comedi_usb_auto_config (struct usb_device*,int ) ;
 int dev_err (int *,char*,int) ;
 int firmwareUpload (struct usbduxfastsub_s*,int ,int ) ;
 int release_firmware (struct firmware const*) ;

__attribute__((used)) static void usbduxfast_firmware_request_complete_handler(const struct firmware
        *fw, void *context)
{
 struct usbduxfastsub_s *usbduxfastsub_tmp = context;
 struct usb_device *usbdev = usbduxfastsub_tmp->usbdev;
 int ret;

 if (fw == ((void*)0))
  return;





 ret = firmwareUpload(usbduxfastsub_tmp, fw->data, fw->size);

 if (ret) {
  dev_err(&usbdev->dev,
   "Could not upload firmware (err=%d)\n", ret);
  goto out;
 }

 comedi_usb_auto_config(usbdev, BOARDNAME);
 out:
 release_firmware(fw);
}
