
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsub {int sem; int * insnBuffer; int * dux_commands; TYPE_1__* interface; scalar_t__ ai_cmd_running; int probed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; int subdev; } ;
struct comedi_device {int minor; struct usbduxsub* private; } ;
struct TYPE_2__ {int dev; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int ENODEV ;
 int SENDSINGLEAD ;
 int create_adc_command (int,int) ;
 int dev_dbg (int *,char*,int ,int,int ) ;
 int dev_err (int *,char*,int ) ;
 int down (int *) ;
 unsigned int le16_to_cpu (int ) ;
 int receive_dux_commands (struct usbduxsub*,int ) ;
 int send_dux_commands (struct usbduxsub*,int ) ;
 int up (int *) ;

__attribute__((used)) static int usbdux_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int i;
 unsigned int one = 0;
 int chan, range;
 int err;
 struct usbduxsub *this_usbduxsub = dev->private;

 if (!this_usbduxsub)
  return 0;

 dev_dbg(&this_usbduxsub->interface->dev,
  "comedi%d: ai_insn_read, insn->n=%d, insn->subdev=%d\n",
  dev->minor, insn->n, insn->subdev);

 down(&this_usbduxsub->sem);
 if (!(this_usbduxsub->probed)) {
  up(&this_usbduxsub->sem);
  return -ENODEV;
 }
 if (this_usbduxsub->ai_cmd_running) {
  dev_err(&this_usbduxsub->interface->dev,
   "comedi%d: ai_insn_read not possible. "
   "Async Command is running.\n", dev->minor);
  up(&this_usbduxsub->sem);
  return 0;
 }


 chan = CR_CHAN(insn->chanspec);
 range = CR_RANGE(insn->chanspec);

 this_usbduxsub->dux_commands[1] = create_adc_command(chan, range);


 err = send_dux_commands(this_usbduxsub, SENDSINGLEAD);
 if (err < 0) {
  up(&this_usbduxsub->sem);
  return err;
 }

 for (i = 0; i < insn->n; i++) {
  err = receive_dux_commands(this_usbduxsub, SENDSINGLEAD);
  if (err < 0) {
   up(&this_usbduxsub->sem);
   return 0;
  }
  one = le16_to_cpu(this_usbduxsub->insnBuffer[1]);
  if (CR_RANGE(insn->chanspec) <= 1)
   one = one ^ 0x800;

  data[i] = one;
 }
 up(&this_usbduxsub->sem);
 return i;
}
