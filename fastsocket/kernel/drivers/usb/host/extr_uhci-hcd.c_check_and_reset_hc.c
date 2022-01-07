
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int io_addr; } ;


 int finish_reset (struct uhci_hcd*) ;
 int to_pci_dev (int ) ;
 scalar_t__ uhci_check_and_reset_hc (int ,int ) ;
 int uhci_dev (struct uhci_hcd*) ;

__attribute__((used)) static void check_and_reset_hc(struct uhci_hcd *uhci)
{
 if (uhci_check_and_reset_hc(to_pci_dev(uhci_dev(uhci)), uhci->io_addr))
  finish_reset(uhci);
}
