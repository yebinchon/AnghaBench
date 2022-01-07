
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8 ;
struct usbduxfastsub_s {TYPE_1__* interface; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int FIRMWARE_MAX_LEN ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int memcpy (int *,int const*,int) ;
 int usbduxfastsub_start (struct usbduxfastsub_s*) ;
 int usbduxfastsub_stop (struct usbduxfastsub_s*) ;
 int usbduxfastsub_upload (struct usbduxfastsub_s*,int *,int ,int) ;

__attribute__((used)) static int firmwareUpload(struct usbduxfastsub_s *usbduxfastsub,
     const u8 * firmwareBinary, int sizeFirmware)
{
 int ret;
 uint8_t *fwBuf;

 if (!firmwareBinary)
  return 0;

 if (sizeFirmware > FIRMWARE_MAX_LEN) {
  dev_err(&usbduxfastsub->interface->dev,
   "comedi_: usbduxfast firmware binary it too large for FX2.\n");
  return -ENOMEM;
 }


 fwBuf = kzalloc(sizeFirmware, GFP_KERNEL);
 if (!fwBuf) {
  dev_err(&usbduxfastsub->interface->dev,
   "comedi_: mem alloc for firmware failed\n");
  return -ENOMEM;
 }
 memcpy(fwBuf, firmwareBinary, sizeFirmware);

 ret = usbduxfastsub_stop(usbduxfastsub);
 if (ret < 0) {
  dev_err(&usbduxfastsub->interface->dev,
   "comedi_: can not stop firmware\n");
  kfree(fwBuf);
  return ret;
 }

 ret = usbduxfastsub_upload(usbduxfastsub, fwBuf, 0, sizeFirmware);
 if (ret < 0) {
  dev_err(&usbduxfastsub->interface->dev,
   "comedi_: firmware upload failed\n");
  kfree(fwBuf);
  return ret;
 }
 ret = usbduxfastsub_start(usbduxfastsub);
 if (ret < 0) {
  dev_err(&usbduxfastsub->interface->dev,
   "comedi_: can not start firmware\n");
  kfree(fwBuf);
  return ret;
 }
 kfree(fwBuf);
 return 0;
}
