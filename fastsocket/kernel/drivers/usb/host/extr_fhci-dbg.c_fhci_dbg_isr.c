
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fhci_hcd {int * usb_irq_stat; } ;



void fhci_dbg_isr(struct fhci_hcd *fhci, int usb_er)
{
 int i;

 if (usb_er == -1) {
  fhci->usb_irq_stat[12]++;
  return;
 }

 for (i = 0; i < 12; ++i) {
  if (usb_er & (1 << i))
   fhci->usb_irq_stat[i]++;
 }
}
