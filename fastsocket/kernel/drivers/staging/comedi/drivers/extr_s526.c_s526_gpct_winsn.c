
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union cmReg {int value; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int * data; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s526_gpct_config; } ;
struct TYPE_3__ {int app; int * data; } ;


 int ADDR_CHAN_REG (int ,int) ;
 int CR_CHAN (int ) ;
 int EINVAL ;


 int REG_C0H ;
 int REG_C0L ;
 int REG_C0M ;

 TYPE_2__* devpriv ;
 int inw (int ) ;
 int outw (short,int ) ;
 int printk (char*,...) ;

__attribute__((used)) static int s526_gpct_winsn(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_insn *insn,
      unsigned int *data)
{
 int subdev_channel = CR_CHAN(insn->chanspec);
 short value;
 union cmReg cmReg;

 printk("s526: GPCT_INSN_WRITE on channel %d\n", subdev_channel);
 cmReg.value = inw(ADDR_CHAN_REG(REG_C0M, subdev_channel));
 printk("s526: Counter Mode Register: %x\n", cmReg.value);

 switch (devpriv->s526_gpct_config[subdev_channel].app) {
 case 130:
  printk("S526: INSN_WRITE: PM\n");
  outw(0xFFFF & ((*data) >> 16), ADDR_CHAN_REG(REG_C0H,
            subdev_channel));
  outw(0xFFFF & (*data), ADDR_CHAN_REG(REG_C0L, subdev_channel));
  break;

 case 128:
  printk("S526: INSN_WRITE: SPG\n");
  outw(0xFFFF & ((*data) >> 16), ADDR_CHAN_REG(REG_C0H,
            subdev_channel));
  outw(0xFFFF & (*data), ADDR_CHAN_REG(REG_C0L, subdev_channel));
  break;

 case 129:






  printk("S526: INSN_WRITE: PTG\n");
  if ((insn->data[1] > insn->data[0]) && (insn->data[0] > 0)) {
   (devpriv->s526_gpct_config[subdev_channel]).data[0] =
       insn->data[0];
   (devpriv->s526_gpct_config[subdev_channel]).data[1] =
       insn->data[1];
  } else {
   printk("s526: INSN_WRITE: PTG: Problem with Pulse params -> %d %d\n",
    insn->data[0], insn->data[1]);
   return -EINVAL;
  }

  value = (short)((*data >> 16) & 0xFFFF);
  outw(value, ADDR_CHAN_REG(REG_C0H, subdev_channel));
  value = (short)(*data & 0xFFFF);
  outw(value, ADDR_CHAN_REG(REG_C0L, subdev_channel));
  break;
 default:
  printk
      ("s526: INSN_WRITE: Functionality %d not implemented yet\n",
       devpriv->s526_gpct_config[subdev_channel].app);
  return -EINVAL;
  break;
 }

 return insn->n;
}
