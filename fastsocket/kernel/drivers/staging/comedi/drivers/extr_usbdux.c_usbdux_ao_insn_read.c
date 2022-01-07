
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsub {unsigned int* outBuffer; int sem; int probed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct usbduxsub* private; } ;


 int CR_CHAN (int ) ;
 int EFAULT ;
 int ENODEV ;
 int down (int *) ;
 int up (int *) ;

__attribute__((used)) static int usbdux_ao_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan = CR_CHAN(insn->chanspec);
 struct usbduxsub *this_usbduxsub = dev->private;

 if (!this_usbduxsub)
  return -EFAULT;

 down(&this_usbduxsub->sem);
 if (!(this_usbduxsub->probed)) {
  up(&this_usbduxsub->sem);
  return -ENODEV;
 }
 for (i = 0; i < insn->n; i++)
  data[i] = this_usbduxsub->outBuffer[chan];

 up(&this_usbduxsub->sem);
 return i;
}
