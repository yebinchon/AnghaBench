
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_insn {unsigned int* data; unsigned int subdev; int chanspec; scalar_t__ n; int insn; } ;
typedef int insn ;


 int CR_PACK (unsigned int,unsigned int,unsigned int) ;
 int INSN_READ ;
 int comedi_do_insn (void*,struct comedi_insn*) ;
 int memset (struct comedi_insn*,int ,int) ;

int comedi_data_read_hint(void *dev, unsigned int subdev,
     unsigned int chan, unsigned int range,
     unsigned int aref)
{
 struct comedi_insn insn;
 unsigned int dummy_data;

 memset(&insn, 0, sizeof(insn));
 insn.insn = INSN_READ;
 insn.n = 0;
 insn.data = &dummy_data;
 insn.subdev = subdev;
 insn.chanspec = CR_PACK(chan, range, aref);

 return comedi_do_insn(dev, &insn);
}
