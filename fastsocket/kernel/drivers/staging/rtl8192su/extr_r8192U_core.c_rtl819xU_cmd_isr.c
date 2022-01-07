
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct pt_regs {int dummy; } ;


 int usb_free_urb (struct urb*) ;

void rtl819xU_cmd_isr(struct urb *tx_cmd_urb, struct pt_regs *regs)
{
 usb_free_urb(tx_cmd_urb);
}
