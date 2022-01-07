
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbduxsub {int sem; int * dux_commands; int probed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {struct usbduxsub* private; } ;
typedef int int16_t ;


 int EFAULT ;
 int ENODEV ;
 int WRITECOUNTERCOMMAND ;
 int cpu_to_le16 (unsigned int) ;
 int down (int *) ;
 int send_dux_commands (struct usbduxsub*,int ) ;
 int up (int *) ;

__attribute__((used)) static int usbdux_counter_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 struct usbduxsub *this_usbduxsub = dev->private;
 int err;

 if (!this_usbduxsub)
  return -EFAULT;

 down(&this_usbduxsub->sem);

 if (!(this_usbduxsub->probed)) {
  up(&this_usbduxsub->sem);
  return -ENODEV;
 }

 this_usbduxsub->dux_commands[1] = insn->chanspec;
 *((int16_t *) (this_usbduxsub->dux_commands + 2)) = cpu_to_le16(*data);

 err = send_dux_commands(this_usbduxsub, WRITECOUNTERCOMMAND);
 if (err < 0) {
  up(&this_usbduxsub->sem);
  return err;
 }

 up(&this_usbduxsub->sem);

 return 1;
}
