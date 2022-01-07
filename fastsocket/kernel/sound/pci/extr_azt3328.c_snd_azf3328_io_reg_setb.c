
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (unsigned int) ;
 int outb (int,unsigned int) ;

__attribute__((used)) static int
snd_azf3328_io_reg_setb(unsigned reg, u8 mask, bool do_set)
{
 u8 prev = inb(reg), new;

 new = (do_set) ? (prev|mask) : (prev & ~mask);


 outb(new, reg);
 if (new != prev)
  return 1;

 return 0;
}
