
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ehci_hcd {int dummy; } ;


 int ehci_dbg (struct ehci_hcd*,char*) ;
 int pci_set_mwi (struct pci_dev*) ;

__attribute__((used)) static int ehci_pci_reinit(struct ehci_hcd *ehci, struct pci_dev *pdev)
{
 int retval;






 retval = pci_set_mwi(pdev);
 if (!retval)
  ehci_dbg(ehci, "MWI active\n");

 return 0;
}
