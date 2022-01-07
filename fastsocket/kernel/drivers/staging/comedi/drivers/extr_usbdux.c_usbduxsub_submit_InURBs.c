
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbduxsub {int numOfInBuffers; TYPE_1__* interface; TYPE_2__** urbIn; TYPE_3__* comedidev; int usbdev; int ai_interval; } ;
struct TYPE_6__ {int minor; } ;
struct TYPE_5__ {int interval; int dev; TYPE_3__* context; int transfer_flags; scalar_t__ status; } ;
struct TYPE_4__ {int dev; } ;


 int EFAULT ;
 int GFP_ATOMIC ;
 int URB_ISO_ASAP ;
 int dev_dbg (int *,char*,int ,int,TYPE_3__*,int ,int ) ;
 int dev_err (int *,char*,int,int) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int usbduxsub_submit_InURBs(struct usbduxsub *usbduxsub)
{
 int i, errFlag;

 if (!usbduxsub)
  return -EFAULT;


 for (i = 0; i < usbduxsub->numOfInBuffers; i++) {

  usbduxsub->urbIn[i]->interval = usbduxsub->ai_interval;
  usbduxsub->urbIn[i]->context = usbduxsub->comedidev;
  usbduxsub->urbIn[i]->dev = usbduxsub->usbdev;
  usbduxsub->urbIn[i]->status = 0;
  usbduxsub->urbIn[i]->transfer_flags = URB_ISO_ASAP;
  dev_dbg(&usbduxsub->interface->dev,
   "comedi%d: submitting in-urb[%d]: %p,%p intv=%d\n",
   usbduxsub->comedidev->minor, i,
   (usbduxsub->urbIn[i]->context),
   (usbduxsub->urbIn[i]->dev),
   (usbduxsub->urbIn[i]->interval));
  errFlag = usb_submit_urb(usbduxsub->urbIn[i], GFP_ATOMIC);
  if (errFlag) {
   dev_err(&usbduxsub->interface->dev,
    "comedi_: ai: usb_submit_urb(%d) error %d\n",
    i, errFlag);
   return errFlag;
  }
 }
 return 0;
}
