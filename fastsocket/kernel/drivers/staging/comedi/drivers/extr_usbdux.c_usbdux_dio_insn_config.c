
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int EINVAL ;




__attribute__((used)) static int usbdux_dio_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int chan = CR_CHAN(insn->chanspec);






 switch (data[0]) {
 case 129:
  s->io_bits |= 1 << chan;
  break;
 case 130:
  s->io_bits &= ~(1 << chan);
  break;
 case 128:
  data[1] =
      (s->io_bits & (1 << chan)) ? COMEDI_OUTPUT : COMEDI_INPUT;
  break;
 default:
  return -EINVAL;
  break;
 }


 return insn->n;
}
