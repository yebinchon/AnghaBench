
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb_devc ;


 unsigned char inb (int) ;
 int jazz16_lock ;
 int outb (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned char smw_getmem(sb_devc * devc, int base, int addr)
{
 unsigned long flags;
 unsigned char val;

 spin_lock_irqsave(&jazz16_lock, flags);

 outb((addr & 0xff), base + 1);
 outb((addr >> 8), base + 2);
 val = inb(base);

 spin_unlock_irqrestore(&jazz16_lock, flags);
 return val;
}
