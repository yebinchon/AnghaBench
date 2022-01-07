
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fhci_usb {int saved_msk; TYPE_2__* fhci; } ;
struct fhci_hcd {struct fhci_usb* usb_lld; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int usb_mod; int usb_mask; int usb_event; } ;


 int USB_MODE_EN ;
 int mdelay (int) ;
 int out_be16 (int *,int) ;
 int setbits8 (int *,int ) ;

__attribute__((used)) static u32 fhci_usb_enable(struct fhci_hcd *fhci)
{
 struct fhci_usb *usb = fhci->usb_lld;

 out_be16(&usb->fhci->regs->usb_event, 0xffff);
 out_be16(&usb->fhci->regs->usb_mask, usb->saved_msk);
 setbits8(&usb->fhci->regs->usb_mod, USB_MODE_EN);

 mdelay(100);

 return 0;
}
