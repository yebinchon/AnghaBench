
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {unsigned int io_bits; unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int minor; } ;
struct TYPE_2__ {int RDDIn; int WRDOut; } ;


 unsigned int DEBIread (struct comedi_device*,int ) ;
 int DEBIwrite (struct comedi_device*,int ,unsigned int) ;
 int EINVAL ;
 int EIO ;
 TYPE_1__* diopriv ;
 int printk (char*,int ) ;

__attribute__((used)) static int s626_dio_insn_bits(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{


 if (insn->n == 0)
  return 0;

 if (insn->n != 2) {
  printk
      ("comedi%d: s626: s626_dio_insn_bits(): Invalid instruction length\n",
       dev->minor);
  return -EINVAL;
 }







 if (data[0]) {

  if ((s->io_bits & data[0]) != data[0])
   return -EIO;

  s->state &= ~data[0];
  s->state |= data[0] & data[1];



  DEBIwrite(dev, diopriv->WRDOut, s->state);
 }
 data[1] = DEBIread(dev, diopriv->RDDIn);

 return 2;
}
