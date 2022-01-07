
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8 ;
struct usbduxsub {TYPE_1__* interface; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int FIRMWARE_MAX_LEN ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int memcpy (int *,int const*,int) ;
 int usbduxsub_start (struct usbduxsub*) ;
 int usbduxsub_stop (struct usbduxsub*) ;
 int usbduxsub_upload (struct usbduxsub*,int *,int ,int) ;

__attribute__((used)) static int firmwareUpload(struct usbduxsub *usbduxsub,
     const u8 * firmwareBinary, int sizeFirmware)
{
 int ret;
 uint8_t *fwBuf;

 if (!firmwareBinary)
  return 0;

 if (sizeFirmware > FIRMWARE_MAX_LEN) {
  dev_err(&usbduxsub->interface->dev,
   "comedi_: usbdux firmware binary it too large for FX2.\n");
  return -ENOMEM;
 }


 fwBuf = kzalloc(sizeFirmware, GFP_KERNEL);
 if (!fwBuf) {
  dev_err(&usbduxsub->interface->dev,
   "comedi_: mem alloc for firmware failed\n");
  return -ENOMEM;
 }
 memcpy(fwBuf, firmwareBinary, sizeFirmware);

 ret = usbduxsub_stop(usbduxsub);
 if (ret < 0) {
  dev_err(&usbduxsub->interface->dev,
   "comedi_: can not stop firmware\n");
  kfree(fwBuf);
  return ret;
 }

 ret = usbduxsub_upload(usbduxsub, fwBuf, 0, sizeFirmware);
 if (ret < 0) {
  dev_err(&usbduxsub->interface->dev,
   "comedi_: firmware upload failed\n");
  kfree(fwBuf);
  return ret;
 }
 ret = usbduxsub_start(usbduxsub);
 if (ret < 0) {
  dev_err(&usbduxsub->interface->dev,
   "comedi_: can not start firmware\n");
  kfree(fwBuf);
  return ret;
 }
 kfree(fwBuf);
 return 0;
}
