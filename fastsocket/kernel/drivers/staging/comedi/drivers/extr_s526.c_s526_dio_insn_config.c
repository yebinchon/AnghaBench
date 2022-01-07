
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 int ADDR_REG (int ) ;
 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int EINVAL ;



 int REG_DIO ;
 int outw (int,int ) ;
 int printk (char*) ;

__attribute__((used)) static int s526_dio_insn_config(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int chan = CR_CHAN(insn->chanspec);
 int group, mask;

 printk("S526 DIO insn_config\n");






 group = chan >> 2;
 mask = 0xF << (group << 2);
 switch (data[0]) {
 case 129:
  s->state |= 1 << (group + 10);
  s->io_bits |= mask;
  break;
 case 130:
  s->state &= ~(1 << (group + 10));
  s->io_bits &= ~mask;
  break;
 case 128:
  data[1] = (s->io_bits & mask) ? COMEDI_OUTPUT : COMEDI_INPUT;
  return insn->n;
 default:
  return -EINVAL;
 }
 outw(s->state, ADDR_REG(REG_DIO));

 return 1;
}
