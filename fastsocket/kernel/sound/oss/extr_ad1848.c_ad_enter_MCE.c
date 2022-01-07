
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int MCE_bit; int base; } ;
typedef TYPE_1__ ad1848_info ;


 int inb (int ) ;
 int io_Index_Addr (TYPE_1__*) ;
 int outb (int,int ) ;

__attribute__((used)) static void ad_enter_MCE(ad1848_info * devc)
{
 int timeout = 1000;
 unsigned short prev;

 while (timeout > 0 && inb(devc->base) == 0x80)
  timeout--;

 devc->MCE_bit = 0x40;
 prev = inb(io_Index_Addr(devc));
 if (prev & 0x40)
 {
  return;
 }
 outb((devc->MCE_bit), io_Index_Addr(devc));
}
