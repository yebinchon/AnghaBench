
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; int minor; } ;


 int S526_IOSIZE ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int s526_detach(struct comedi_device *dev)
{
 printk("comedi%d: s526: remove\n", dev->minor);

 if (dev->iobase > 0)
  release_region(dev->iobase, S526_IOSIZE);

 return 0;
}
