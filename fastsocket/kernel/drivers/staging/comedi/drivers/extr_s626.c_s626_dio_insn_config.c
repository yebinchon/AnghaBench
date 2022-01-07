
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int WRDOut; } ;




 int CR_CHAN (int ) ;
 int DEBIwrite (struct comedi_device*,int ,int) ;
 int EINVAL ;

 TYPE_1__* diopriv ;

__attribute__((used)) static int s626_dio_insn_config(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{

 switch (data[0]) {
 case 128:
  data[1] =
      (s->
       io_bits & (1 << CR_CHAN(insn->chanspec))) ? 129 :
      130;
  return insn->n;
  break;
 case 130:
  s->io_bits &= ~(1 << CR_CHAN(insn->chanspec));
  break;
 case 129:
  s->io_bits |= 1 << CR_CHAN(insn->chanspec);
  break;
 default:
  return -EINVAL;
  break;
 }
 DEBIwrite(dev, diopriv->WRDOut, s->io_bits);

 return 1;
}
