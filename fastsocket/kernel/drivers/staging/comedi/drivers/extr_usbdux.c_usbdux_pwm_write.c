
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsub {int dummy; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct usbduxsub* private; } ;


 int CR_CHAN (int ) ;
 int EFAULT ;
 int EINVAL ;
 int usbdux_pwm_pattern (struct comedi_device*,struct comedi_subdevice*,int ,unsigned int,int ) ;

__attribute__((used)) static int usbdux_pwm_write(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 struct usbduxsub *this_usbduxsub = dev->private;

 if (!this_usbduxsub)
  return -EFAULT;

 if ((insn->n) != 1) {




  return -EINVAL;
 }






 return usbdux_pwm_pattern(dev, s, CR_CHAN(insn->chanspec), data[0], 0);
}
