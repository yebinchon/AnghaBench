
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int io; } ;
typedef TYPE_1__ multisound_dev_t ;


 int EIO ;
 int HPISR_TXDE ;
 scalar_t__ HP_ISR ;
 int msnd_inb (scalar_t__) ;

__attribute__((used)) static int msnd_wait_TXDE(multisound_dev_t *dev)
{
 register unsigned int io = dev->io;
 register int timeout = 1000;

 while(timeout-- > 0)
  if (msnd_inb(io + HP_ISR) & HPISR_TXDE)
   return 0;

 return -EIO;
}
