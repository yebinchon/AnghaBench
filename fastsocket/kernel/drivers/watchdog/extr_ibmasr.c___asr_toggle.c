
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asr_read_addr ;
 unsigned char asr_toggle_mask ;
 int asr_write_addr ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static void __asr_toggle(void)
{
 unsigned char reg;

 reg = inb(asr_read_addr);

 outb(reg & ~asr_toggle_mask, asr_write_addr);
 reg = inb(asr_read_addr);

 outb(reg | asr_toggle_mask, asr_write_addr);
 reg = inb(asr_read_addr);

 outb(reg & ~asr_toggle_mask, asr_write_addr);
 reg = inb(asr_read_addr);
}
