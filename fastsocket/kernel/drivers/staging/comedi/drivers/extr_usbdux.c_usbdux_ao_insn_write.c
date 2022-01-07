
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsub {int* dux_commands; unsigned int* outBuffer; int sem; TYPE_1__* interface; scalar_t__ ao_cmd_running; int probed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int minor; struct usbduxsub* private; } ;
typedef int int16_t ;
struct TYPE_2__ {int dev; } ;


 int CR_CHAN (int ) ;
 int EFAULT ;
 int ENODEV ;
 int SENDDACOMMANDS ;
 int cpu_to_le16 (unsigned int) ;
 int dev_dbg (int *,char*,int ,...) ;
 int dev_err (int *,char*,int ) ;
 int down (int *) ;
 int send_dux_commands (struct usbduxsub*,int ) ;
 int up (int *) ;

__attribute__((used)) static int usbdux_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int i, err;
 int chan = CR_CHAN(insn->chanspec);
 struct usbduxsub *this_usbduxsub = dev->private;

 if (!this_usbduxsub)
  return -EFAULT;

 dev_dbg(&this_usbduxsub->interface->dev,
  "comedi%d: ao_insn_write\n", dev->minor);

 down(&this_usbduxsub->sem);
 if (!(this_usbduxsub->probed)) {
  up(&this_usbduxsub->sem);
  return -ENODEV;
 }
 if (this_usbduxsub->ao_cmd_running) {
  dev_err(&this_usbduxsub->interface->dev,
   "comedi%d: ao_insn_write: "
   "ERROR: asynchronous ao_cmd is running\n", dev->minor);
  up(&this_usbduxsub->sem);
  return 0;
 }

 for (i = 0; i < insn->n; i++) {
  dev_dbg(&this_usbduxsub->interface->dev,
   "comedi%d: ao_insn_write: data[chan=%d,i=%d]=%d\n",
   dev->minor, chan, i, data[i]);


  this_usbduxsub->dux_commands[1] = 1;

  *((int16_t *) (this_usbduxsub->dux_commands + 2)) =
      cpu_to_le16(data[i]);
  this_usbduxsub->outBuffer[chan] = data[i];

  this_usbduxsub->dux_commands[4] = (chan << 6);
  err = send_dux_commands(this_usbduxsub, SENDDACOMMANDS);
  if (err < 0) {
   up(&this_usbduxsub->sem);
   return err;
  }
 }
 up(&this_usbduxsub->sem);

 return i;
}
