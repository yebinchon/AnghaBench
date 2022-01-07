
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int MCE_bit; int base; } ;
typedef TYPE_1__ ad1848_info ;


 unsigned char ad_read (TYPE_1__*,int) ;
 int inb (int ) ;
 int io_Index_Addr (TYPE_1__*) ;
 int outb (int,int ) ;
 int wait_for_calibration (TYPE_1__*) ;

__attribute__((used)) static void ad_leave_MCE(ad1848_info * devc)
{
 unsigned char prev, acal;
 int timeout = 1000;

 while (timeout > 0 && inb(devc->base) == 0x80)
  timeout--;

 acal = ad_read(devc, 9);

 devc->MCE_bit = 0x00;
 prev = inb(io_Index_Addr(devc));
 outb((0x00), io_Index_Addr(devc));

 if ((prev & 0x40) == 0)
 {
  return;
 }
 outb((0x00), io_Index_Addr(devc));
 if (acal & 0x08)
  wait_for_calibration(devc);
}
