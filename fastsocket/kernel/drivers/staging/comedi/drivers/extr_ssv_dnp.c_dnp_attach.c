
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dnp_private_data {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int insn_config; int insn_bits; int * range_table; int type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int board_name; int minor; } ;
struct comedi_devconfig {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int COMEDI_SUBD_DIO ;
 int CSCDR ;
 int CSCIR ;
 int ENOMEM ;
 int PAMR ;
 int PBMR ;
 int PCMR ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 scalar_t__ alloc_private (struct comedi_device*,int) ;
 scalar_t__ alloc_subdevices (struct comedi_device*,int) ;
 int dnp_dio_insn_bits ;
 int dnp_dio_insn_config ;
 int inb (int ) ;
 int outb (int,int ) ;
 int printk (char*,...) ;
 int range_digital ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int dnp_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{

 struct comedi_subdevice *s;

 printk("comedi%d: dnp: ", dev->minor);






 dev->board_name = thisboard->name;



 if (alloc_private(dev, sizeof(struct dnp_private_data)) < 0)
  return -ENOMEM;




 if (alloc_subdevices(dev, 1) < 0)
  return -ENOMEM;

 s = dev->subdevices + 0;

 s->type = COMEDI_SUBD_DIO;
 s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
 s->n_chan = 20;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = dnp_dio_insn_bits;
 s->insn_config = dnp_dio_insn_config;

 printk("attached\n");






 outb(PAMR, CSCIR);
 outb(0x00, CSCDR);
 outb(PBMR, CSCIR);
 outb(0x00, CSCDR);
 outb(PCMR, CSCIR);
 outb((inb(CSCDR) & 0xAA), CSCDR);

 return 1;

}
