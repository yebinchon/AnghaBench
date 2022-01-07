
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_EFDR ;
 int WDT_EFER ;
 unsigned char inb (int ) ;
 int inb_p (int ) ;
 int outb (int,int ) ;
 int outb_p (int,int ) ;

__attribute__((used)) static void w83627hf_select_wd_register(void)
{
 unsigned char c;
 outb_p(0x87, WDT_EFER);
 outb_p(0x87, WDT_EFER);

 outb(0x20, WDT_EFER);
 c = inb(WDT_EFDR);
 if (c == 0x82) {
  outb_p(0x2b, WDT_EFER);
  c = ((inb_p(WDT_EFDR) & 0xf7) | 0x04);
  outb_p(0x2b, WDT_EFER);
  outb_p(c, WDT_EFDR);
 } else if (c == 0x88) {
  outb_p(0x2d, WDT_EFER);
  c = inb_p(WDT_EFDR) & ~0x01;
  outb_p(0x2d, WDT_EFER);
  outb_p(c, WDT_EFDR);
 }

 outb_p(0x07, WDT_EFER);
 outb_p(0x08, WDT_EFDR);
 outb_p(0x30, WDT_EFER);
 outb_p(0x01, WDT_EFDR);
}
