
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int CSCDR ;
 int CSCIR ;
 int EINVAL ;



 int PAMR ;
 int PBMR ;
 int PCMR ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static int dnp_dio_insn_config(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{

 u8 register_buffer;

 int chan = CR_CHAN(insn->chanspec);

 switch (data[0]) {
 case 129:
 case 130:
  break;
 case 128:
  data[1] =
      (inb(CSCDR) & (1 << chan)) ? COMEDI_OUTPUT : COMEDI_INPUT;
  return insn->n;
  break;
 default:
  return -EINVAL;
  break;
 }






 if ((chan >= 0) && (chan <= 7)) {

  outb(PAMR, CSCIR);
 } else if ((chan >= 8) && (chan <= 15)) {

  chan -= 8;
  outb(PBMR, CSCIR);
 } else if ((chan >= 16) && (chan <= 19)) {


  chan -= 16;
  chan *= 2;
  outb(PCMR, CSCIR);
 } else {
  return -EINVAL;
 }


 register_buffer = inb(CSCDR);
 if (data[0] == COMEDI_OUTPUT) {
  register_buffer |= (1 << chan);
 } else {
  register_buffer &= ~(1 << chan);
 }
 outb(register_buffer, CSCDR);

 return 1;

}
