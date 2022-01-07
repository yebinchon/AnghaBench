
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int dead; int frame_number; int io_addr; } ;


 int finish_reset (struct uhci_hcd*) ;
 int to_pci_dev (int ) ;
 int uhci_dev (struct uhci_hcd*) ;
 int uhci_get_current_frame_number (struct uhci_hcd*) ;
 int uhci_reset_hc (int ,int ) ;

__attribute__((used)) static void uhci_hc_died(struct uhci_hcd *uhci)
{
 uhci_get_current_frame_number(uhci);
 uhci_reset_hc(to_pci_dev(uhci_dev(uhci)), uhci->io_addr);
 finish_reset(uhci);
 uhci->dead = 1;


 ++uhci->frame_number;
}
