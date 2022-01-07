
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct fhci_usb {TYPE_2__* fhci; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int usb_sof_tmr; } ;


 int be16_to_cpu (int) ;
 int in_be16 (int *) ;

u16 fhci_get_sof_timer_count(struct fhci_usb *usb)
{
 return be16_to_cpu(in_be16(&usb->fhci->regs->usb_sof_tmr) / 12);
}
