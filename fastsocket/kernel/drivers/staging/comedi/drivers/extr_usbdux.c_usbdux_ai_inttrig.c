
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbduxsub {int ai_cmd_running; int sem; TYPE_2__* interface; int probed; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int minor; struct usbduxsub* private; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int * inttrig; } ;


 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int ,...) ;
 int down (int *) ;
 int up (int *) ;
 int usbduxsub_submit_InURBs (struct usbduxsub*) ;

__attribute__((used)) static int usbdux_ai_inttrig(struct comedi_device *dev,
        struct comedi_subdevice *s, unsigned int trignum)
{
 int ret;
 struct usbduxsub *this_usbduxsub = dev->private;
 if (!this_usbduxsub)
  return -EFAULT;

 down(&this_usbduxsub->sem);
 if (!(this_usbduxsub->probed)) {
  up(&this_usbduxsub->sem);
  return -ENODEV;
 }
 dev_dbg(&this_usbduxsub->interface->dev,
  "comedi%d: usbdux_ai_inttrig\n", dev->minor);

 if (trignum != 0) {
  dev_err(&this_usbduxsub->interface->dev,
   "comedi%d: usbdux_ai_inttrig: invalid trignum\n",
   dev->minor);
  up(&this_usbduxsub->sem);
  return -EINVAL;
 }
 if (!(this_usbduxsub->ai_cmd_running)) {
  this_usbduxsub->ai_cmd_running = 1;
  ret = usbduxsub_submit_InURBs(this_usbduxsub);
  if (ret < 0) {
   dev_err(&this_usbduxsub->interface->dev,
    "comedi%d: usbdux_ai_inttrig: "
    "urbSubmit: err=%d\n", dev->minor, ret);
   this_usbduxsub->ai_cmd_running = 0;
   up(&this_usbduxsub->sem);
   return ret;
  }
  s->async->inttrig = ((void*)0);
 } else {
  dev_err(&this_usbduxsub->interface->dev,
   "comedi%d: ai_inttrig but acqu is already running\n",
   dev->minor);
 }
 up(&this_usbduxsub->sem);
 return 1;
}
