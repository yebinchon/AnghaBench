
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_info {int io_base; } ;
typedef int sb_devc ;


 int jazz16_base ;
 unsigned char jazz16_bits ;
 int jazz16_lock ;
 int outb (unsigned char,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void relocate_Jazz16(sb_devc * devc, struct address_info *hw_config)
{
 unsigned char bits = 0;
 unsigned long flags;

 if (jazz16_base != 0 && jazz16_base != hw_config->io_base)
  return;

 switch (hw_config->io_base)
 {
  case 0x220:
   bits = 1;
   break;
  case 0x240:
   bits = 2;
   break;
  case 0x260:
   bits = 3;
   break;
  default:
   return;
 }
 bits = jazz16_bits = bits << 5;
 jazz16_base = hw_config->io_base;




 spin_lock_irqsave(&jazz16_lock, flags);
 outb((0xAF), 0x201);
 outb((0x50), 0x201);
 outb((bits), 0x201);
 spin_unlock_irqrestore(&jazz16_lock, flags);
}
