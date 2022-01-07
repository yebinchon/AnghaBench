
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsub {TYPE_1__* interface; int pwm_cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int minor; struct usbduxsub* private; } ;
struct TYPE_2__ {int dev; } ;


 int SENDPWMOFF ;
 int dev_dbg (int *,char*,int ) ;
 int send_dux_commands (struct usbduxsub*,int ) ;
 int usbdux_pwm_stop (struct usbduxsub*,int ) ;

__attribute__((used)) static int usbdux_pwm_cancel(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 struct usbduxsub *this_usbduxsub = dev->private;
 int res = 0;


 res = usbdux_pwm_stop(this_usbduxsub, this_usbduxsub->pwm_cmd_running);

 dev_dbg(&this_usbduxsub->interface->dev,
  "comedi %d: sending pwm off command to the usb device.\n",
  dev->minor);
 res = send_dux_commands(this_usbduxsub, SENDPWMOFF);
 if (res < 0)
  return res;

 return res;
}
