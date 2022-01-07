
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsub {int sem; int * insnBuffer; int probed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {struct usbduxsub* private; } ;


 int EFAULT ;
 int ENODEV ;
 int READCOUNTERCOMMAND ;
 int down (int *) ;
 unsigned int le16_to_cpu (int ) ;
 int receive_dux_commands (struct usbduxsub*,int ) ;
 int send_dux_commands (struct usbduxsub*,int ) ;
 int up (int *) ;

__attribute__((used)) static int usbdux_counter_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 struct usbduxsub *this_usbduxsub = dev->private;
 int chan = insn->chanspec;
 int err;

 if (!this_usbduxsub)
  return -EFAULT;

 down(&this_usbduxsub->sem);

 if (!(this_usbduxsub->probed)) {
  up(&this_usbduxsub->sem);
  return -ENODEV;
 }

 err = send_dux_commands(this_usbduxsub, READCOUNTERCOMMAND);
 if (err < 0) {
  up(&this_usbduxsub->sem);
  return err;
 }

 err = receive_dux_commands(this_usbduxsub, READCOUNTERCOMMAND);
 if (err < 0) {
  up(&this_usbduxsub->sem);
  return err;
 }

 data[0] = le16_to_cpu(this_usbduxsub->insnBuffer[chan + 1]);
 up(&this_usbduxsub->sem);
 return 1;
}
