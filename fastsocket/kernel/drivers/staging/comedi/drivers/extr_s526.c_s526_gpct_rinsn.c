
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 int ADDR_CHAN_REG (int ,int) ;
 int CR_CHAN (int ) ;
 int EINVAL ;
 int REG_C0H ;
 int REG_C0L ;
 unsigned short inw (int ) ;
 int printk (char*) ;

__attribute__((used)) static int s526_gpct_rinsn(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_insn *insn,
      unsigned int *data)
{
 int i;
 int counter_channel = CR_CHAN(insn->chanspec);
 unsigned short datalow;
 unsigned short datahigh;


 if (insn->n <= 0) {
  printk("s526: INSN_READ: n should be > 0\n");
  return -EINVAL;
 }

 for (i = 0; i < insn->n; i++) {
  datalow = inw(ADDR_CHAN_REG(REG_C0L, counter_channel));
  datahigh = inw(ADDR_CHAN_REG(REG_C0H, counter_channel));
  data[i] = (int)(datahigh & 0x00FF);
  data[i] = (data[i] << 16) | (datalow & 0xFFFF);

 }
 return i;
}
