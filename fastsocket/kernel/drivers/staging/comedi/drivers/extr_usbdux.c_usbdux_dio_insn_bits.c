
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsub {unsigned int* dux_commands; int sem; int * insnBuffer; int probed; } ;
struct comedi_subdevice {unsigned int state; unsigned int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct usbduxsub* private; } ;


 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int SENDDIOBITSCOMMAND ;
 int down (int *) ;
 unsigned int le16_to_cpu (int ) ;
 int receive_dux_commands (struct usbduxsub*,int ) ;
 int send_dux_commands (struct usbduxsub*,int ) ;
 int up (int *) ;

__attribute__((used)) static int usbdux_dio_insn_bits(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{

 struct usbduxsub *this_usbduxsub = dev->private;
 int err;

 if (!this_usbduxsub)
  return -EFAULT;

 if (insn->n != 2)
  return -EINVAL;

 down(&this_usbduxsub->sem);

 if (!(this_usbduxsub->probed)) {
  up(&this_usbduxsub->sem);
  return -ENODEV;
 }



 s->state &= ~data[0];
 s->state |= data[0] & data[1];
 this_usbduxsub->dux_commands[1] = s->io_bits;
 this_usbduxsub->dux_commands[2] = s->state;



 err = send_dux_commands(this_usbduxsub, SENDDIOBITSCOMMAND);
 if (err < 0) {
  up(&this_usbduxsub->sem);
  return err;
 }
 err = receive_dux_commands(this_usbduxsub, SENDDIOBITSCOMMAND);
 if (err < 0) {
  up(&this_usbduxsub->sem);
  return err;
 }

 data[1] = le16_to_cpu(this_usbduxsub->insnBuffer[1]);
 up(&this_usbduxsub->sem);
 return 2;
}
