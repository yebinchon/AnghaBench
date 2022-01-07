
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DATA_AVAIL ;
 int ENODEV ;
 int READ ;
 int RESET ;
 int SBP1 (unsigned long,int ) ;
 int inb (int ) ;
 int outb (int,int ) ;
 int snd_printd (char*,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int snd_sgalaxy_sbdsp_reset(unsigned long port)
{
 int i;

 outb(1, SBP1(port, RESET));
 udelay(10);
 outb(0, SBP1(port, RESET));
 udelay(30);
 for (i = 0; i < 1000 && !(inb(SBP1(port, DATA_AVAIL)) & 0x80); i++);
 if (inb(SBP1(port, READ)) != 0xaa) {
  snd_printd("sb_reset: failed at 0x%lx!!!\n", port);
  return -ENODEV;
 }
 return 0;
}
