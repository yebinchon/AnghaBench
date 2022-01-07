
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int dummy; } ;


 int xhci_dbg (struct xhci_hcd*,char*,...) ;

int xhci_is_vendor_info_code(struct xhci_hcd *xhci, unsigned int trb_comp_code)
{
 if (trb_comp_code >= 224 && trb_comp_code <= 255) {



  xhci_dbg(xhci, "Vendor defined info completion code %u\n",
    trb_comp_code);
  xhci_dbg(xhci, "Treating code as success.\n");
  return 1;
 }
 return 0;
}
