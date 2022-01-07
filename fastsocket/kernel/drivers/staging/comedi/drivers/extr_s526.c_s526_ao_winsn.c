
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_readback; } ;


 int ADDR_REG (int ) ;
 int CR_CHAN (int ) ;
 int REG_ADD ;
 int REG_DAC ;
 TYPE_1__* devpriv ;
 int outw (unsigned short,int ) ;

__attribute__((used)) static int s526_ao_winsn(struct comedi_device *dev, struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan = CR_CHAN(insn->chanspec);
 unsigned short val;


 val = chan << 1;

 outw(val, ADDR_REG(REG_DAC));



 for (i = 0; i < insn->n; i++) {


  outw(data[i], ADDR_REG(REG_ADD));
  devpriv->ao_readback[chan] = data[i];

  outw(val + 1, ADDR_REG(REG_DAC));
 }


 return i;
}
