
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int controller; } ;
struct usb_hcd {int irq; TYPE_2__ self; } ;
struct ohci_hcd {scalar_t__ hcca_dma; int * hcca; int unlink_watchdog; TYPE_1__* regs; } ;
struct TYPE_3__ {int intrdisable; } ;


 int OHCI_INTR_MIE ;
 int del_timer (int *) ;
 int dma_free_coherent (int ,int,int *,scalar_t__) ;
 int flush_scheduled_work () ;
 int free_irq (int,struct usb_hcd*) ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_dump (struct ohci_hcd*,int) ;
 int ohci_mem_cleanup (struct ohci_hcd*) ;
 int ohci_usb_reset (struct ohci_hcd*) ;
 int ohci_writel (struct ohci_hcd*,int ,int *) ;
 scalar_t__ quirk_amdiso (struct ohci_hcd*) ;
 scalar_t__ quirk_zfmicro (struct ohci_hcd*) ;
 int remove_debug_files (struct ohci_hcd*) ;
 int usb_amd_dev_put () ;

__attribute__((used)) static void ohci_stop (struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci (hcd);

 ohci_dump (ohci, 1);

 flush_scheduled_work();

 ohci_usb_reset (ohci);
 ohci_writel (ohci, OHCI_INTR_MIE, &ohci->regs->intrdisable);
 free_irq(hcd->irq, hcd);
 hcd->irq = -1;

 if (quirk_zfmicro(ohci))
  del_timer(&ohci->unlink_watchdog);
 if (quirk_amdiso(ohci))
  usb_amd_dev_put();

 remove_debug_files (ohci);
 ohci_mem_cleanup (ohci);
 if (ohci->hcca) {
  dma_free_coherent (hcd->self.controller,
    sizeof *ohci->hcca,
    ohci->hcca, ohci->hcca_dma);
  ohci->hcca = ((void*)0);
  ohci->hcca_dma = 0;
 }
}
