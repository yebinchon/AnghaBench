
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int frame_number; scalar_t__ io_addr; int frame_dma_handle; } ;


 int UHCI_MAX_SOF_NUMBER ;
 scalar_t__ USBFLBASEADD ;
 scalar_t__ USBFRNUM ;
 int USBLEGSUP ;
 int USBLEGSUP_DEFAULT ;
 scalar_t__ USBSOF ;
 int USBSOF_DEFAULT ;
 int outb (int ,scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int pci_write_config_word (int ,int ,int ) ;
 int to_pci_dev (int ) ;
 int uhci_dev (struct uhci_hcd*) ;

__attribute__((used)) static void configure_hc(struct uhci_hcd *uhci)
{

 outb(USBSOF_DEFAULT, uhci->io_addr + USBSOF);


 outl(uhci->frame_dma_handle, uhci->io_addr + USBFLBASEADD);


 outw(uhci->frame_number & UHCI_MAX_SOF_NUMBER,
   uhci->io_addr + USBFRNUM);


 pci_write_config_word(to_pci_dev(uhci_dev(uhci)), USBLEGSUP,
   USBLEGSUP_DEFAULT);
}
