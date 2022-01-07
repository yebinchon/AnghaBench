
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsub {int sem; int ao_cmd_running; int probed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxsub* private; } ;


 int EFAULT ;
 int ENODEV ;
 int down (int *) ;
 int up (int *) ;
 int usbdux_ao_stop (struct usbduxsub*,int ) ;

__attribute__((used)) static int usbdux_ao_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct usbduxsub *this_usbduxsub = dev->private;
 int res = 0;

 if (!this_usbduxsub)
  return -EFAULT;


 down(&this_usbduxsub->sem);
 if (!(this_usbduxsub->probed)) {
  up(&this_usbduxsub->sem);
  return -ENODEV;
 }

 res = usbdux_ao_stop(this_usbduxsub, this_usbduxsub->ao_cmd_running);
 up(&this_usbduxsub->sem);
 return res;
}
