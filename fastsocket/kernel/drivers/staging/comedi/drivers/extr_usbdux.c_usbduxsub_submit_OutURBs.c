
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbduxsub {int numOfOutBuffers; TYPE_1__* interface; TYPE_2__** urbOut; int usbdev; int comedidev; } ;
struct TYPE_4__ {int transfer_flags; scalar_t__ status; int dev; int context; } ;
struct TYPE_3__ {int dev; } ;


 int EFAULT ;
 int GFP_ATOMIC ;
 int URB_ISO_ASAP ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,int,int) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int usbduxsub_submit_OutURBs(struct usbduxsub *usbduxsub)
{
 int i, errFlag;

 if (!usbduxsub)
  return -EFAULT;

 for (i = 0; i < usbduxsub->numOfOutBuffers; i++) {
  dev_dbg(&usbduxsub->interface->dev,
   "comedi_: submitting out-urb[%d]\n", i);

  usbduxsub->urbOut[i]->context = usbduxsub->comedidev;
  usbduxsub->urbOut[i]->dev = usbduxsub->usbdev;
  usbduxsub->urbOut[i]->status = 0;
  usbduxsub->urbOut[i]->transfer_flags = URB_ISO_ASAP;
  errFlag = usb_submit_urb(usbduxsub->urbOut[i], GFP_ATOMIC);
  if (errFlag) {
   dev_err(&usbduxsub->interface->dev,
    "comedi_: ao: usb_submit_urb(%d) error %d\n",
    i, errFlag);
   return errFlag;
  }
 }
 return 0;
}
