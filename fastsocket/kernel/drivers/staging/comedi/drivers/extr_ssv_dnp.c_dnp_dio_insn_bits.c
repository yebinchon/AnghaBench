
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int CSCDR ;
 int CSCIR ;
 int EINVAL ;
 int PADR ;
 int PBDR ;
 int PCDR ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static int dnp_dio_insn_bits(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn, unsigned int *data)
{

 if (insn->n != 2)
  return -EINVAL;
 if (data[0]) {

  outb(PADR, CSCIR);
  outb((inb(CSCDR)
        & ~(u8) (data[0] & 0x0000FF))
       | (u8) (data[1] & 0x0000FF), CSCDR);

  outb(PBDR, CSCIR);
  outb((inb(CSCDR)
        & ~(u8) ((data[0] & 0x00FF00) >> 8))
       | (u8) ((data[1] & 0x00FF00) >> 8), CSCDR);

  outb(PCDR, CSCIR);
  outb((inb(CSCDR)
        & ~(u8) ((data[0] & 0x0F0000) >> 12))
       | (u8) ((data[1] & 0x0F0000) >> 12), CSCDR);
 }


 outb(PADR, CSCIR);
 data[0] = inb(CSCDR);
 outb(PBDR, CSCIR);
 data[0] += inb(CSCDR) << 8;
 outb(PCDR, CSCIR);
 data[0] += ((inb(CSCDR) & 0xF0) << 12);

 return 2;

}
