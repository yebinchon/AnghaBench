
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsub {int sem; int ai_cmd_running; int probed; TYPE_1__* interface; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxsub* private; } ;
struct TYPE_2__ {int dev; } ;


 int EFAULT ;
 int ENODEV ;
 int dev_dbg (int *,char*) ;
 int down (int *) ;
 int up (int *) ;
 int usbdux_ai_stop (struct usbduxsub*,int ) ;

__attribute__((used)) static int usbdux_ai_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct usbduxsub *this_usbduxsub;
 int res = 0;


 this_usbduxsub = dev->private;
 if (!this_usbduxsub)
  return -EFAULT;

 dev_dbg(&this_usbduxsub->interface->dev, "comedi: usbdux_ai_cancel\n");


 down(&this_usbduxsub->sem);
 if (!(this_usbduxsub->probed)) {
  up(&this_usbduxsub->sem);
  return -ENODEV;
 }

 res = usbdux_ai_stop(this_usbduxsub, this_usbduxsub->ai_cmd_running);
 up(&this_usbduxsub->sem);
 return res;
}
