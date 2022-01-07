
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_insn {int n; unsigned int* data; unsigned int subdev; int insn; } ;
typedef int insn ;


 int INSN_BITS ;
 int comedi_do_insn (void*,struct comedi_insn*) ;
 int memset (struct comedi_insn*,int ,int) ;

int comedi_dio_bitfield(void *dev, unsigned int subdev, unsigned int mask,
   unsigned int *bits)
{
 struct comedi_insn insn;
 unsigned int data[2];
 int ret;

 memset(&insn, 0, sizeof(insn));
 insn.insn = INSN_BITS;
 insn.n = 2;
 insn.data = data;
 insn.subdev = subdev;

 data[0] = mask;
 data[1] = *bits;

 ret = comedi_do_insn(dev, &insn);

 *bits = data[1];

 return ret;
}
