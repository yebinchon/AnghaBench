
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsub {int sizePwmBuf; TYPE_1__* urbPwm; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct usbduxsub* private; } ;
struct TYPE_2__ {scalar_t__ transfer_buffer; } ;


 int EFAULT ;

__attribute__((used)) static int usbdux_pwm_pattern(struct comedi_device *dev,
         struct comedi_subdevice *s, int channel,
         unsigned int value, unsigned int sign)
{
 struct usbduxsub *this_usbduxsub = dev->private;
 int i, szbuf;
 char *pBuf;
 char pwm_mask;
 char sgn_mask;
 char c;

 if (!this_usbduxsub)
  return -EFAULT;


 pwm_mask = (1 << channel);

 sgn_mask = (16 << channel);


 szbuf = this_usbduxsub->sizePwmBuf;
 pBuf = (char *)(this_usbduxsub->urbPwm->transfer_buffer);
 for (i = 0; i < szbuf; i++) {
  c = *pBuf;

  c = c & (~pwm_mask);

  if (i < value)
   c = c | pwm_mask;

  if (!sign) {

   c = c & (~sgn_mask);
  } else {

   c = c | sgn_mask;
  }
  *(pBuf++) = c;
 }
 return 1;
}
