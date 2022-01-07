
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbduxsub {TYPE_1__* interface; TYPE_2__* urbPwm; int comedidev; int sizePwmBuf; int usbdev; } ;
struct TYPE_5__ {int transfer_buffer; } ;
struct TYPE_4__ {int dev; } ;


 int EFAULT ;
 int GFP_ATOMIC ;
 int PWM_EP ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 int usb_fill_bulk_urb (TYPE_2__*,int ,int ,int ,int ,int ,int ) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (TYPE_2__*,int ) ;
 int usbduxsub_pwm_irq ;

__attribute__((used)) static int usbduxsub_submit_PwmURBs(struct usbduxsub *usbduxsub)
{
 int errFlag;

 if (!usbduxsub)
  return -EFAULT;

 dev_dbg(&usbduxsub->interface->dev, "comedi_: submitting pwm-urb\n");


 usb_fill_bulk_urb(usbduxsub->urbPwm,
     usbduxsub->usbdev,
     usb_sndbulkpipe(usbduxsub->usbdev, PWM_EP),
     usbduxsub->urbPwm->transfer_buffer,
     usbduxsub->sizePwmBuf, usbduxsub_pwm_irq,
     usbduxsub->comedidev);

 errFlag = usb_submit_urb(usbduxsub->urbPwm, GFP_ATOMIC);
 if (errFlag) {
  dev_err(&usbduxsub->interface->dev,
   "comedi_: usbdux: pwm: usb_submit_urb error %d\n",
   errFlag);
  return errFlag;
 }
 return 0;
}
