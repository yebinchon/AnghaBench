
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int hci_version; int limit_active_eps; int quirks; } ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; int revision; } ;
struct device {int dummy; } ;


 scalar_t__ PCI_DEVICE_ID_ASROCK_P67 ;
 scalar_t__ PCI_DEVICE_ID_FRESCO_LOGIC_FL1400 ;
 scalar_t__ PCI_DEVICE_ID_FRESCO_LOGIC_PDK ;
 scalar_t__ PCI_DEVICE_ID_INTEL_PANTHERPOINT_XHCI ;
 scalar_t__ PCI_VENDOR_ID_AMD ;
 scalar_t__ PCI_VENDOR_ID_ETRON ;
 scalar_t__ PCI_VENDOR_ID_FRESCO_LOGIC ;
 scalar_t__ PCI_VENDOR_ID_INTEL ;
 scalar_t__ PCI_VENDOR_ID_NEC ;
 scalar_t__ PCI_VENDOR_ID_VIA ;
 int XHCI_AMD_0x96_HOST ;
 int XHCI_AMD_PLL_FIX ;
 int XHCI_AVOID_BEI ;
 int XHCI_BROKEN_MSI ;
 int XHCI_EP_LIMIT_QUIRK ;
 int XHCI_INTEL_HOST ;
 int XHCI_LPM_SUPPORT ;
 int XHCI_NEC_HOST ;
 int XHCI_RESET_EP_QUIRK ;
 int XHCI_RESET_ON_RESUME ;
 int XHCI_SPURIOUS_REBOOT ;
 int XHCI_SPURIOUS_SUCCESS ;
 int XHCI_SW_BW_CHECKING ;
 int XHCI_TRUST_TX_LENGTH ;
 struct pci_dev* to_pci_dev (struct device*) ;
 scalar_t__ usb_amd_find_chipset_info () ;
 int xhci_dbg (struct xhci_hcd*,char*,...) ;

__attribute__((used)) static void xhci_pci_quirks(struct device *dev, struct xhci_hcd *xhci)
{
 struct pci_dev *pdev = to_pci_dev(dev);


 if (pdev->vendor == PCI_VENDOR_ID_FRESCO_LOGIC &&
   (pdev->device == PCI_DEVICE_ID_FRESCO_LOGIC_PDK ||
    pdev->device == PCI_DEVICE_ID_FRESCO_LOGIC_FL1400)) {
  if (pdev->device == PCI_DEVICE_ID_FRESCO_LOGIC_PDK &&
    pdev->revision == 0x0) {
   xhci->quirks |= XHCI_RESET_EP_QUIRK;
   xhci_dbg(xhci, "QUIRK: Fresco Logic xHC needs configure"
     " endpoint cmd after reset endpoint\n");
  }




  xhci->quirks |= XHCI_BROKEN_MSI;
  xhci_dbg(xhci, "QUIRK: Fresco Logic revision %u "
    "has broken MSI implementation\n",
    pdev->revision);
  xhci->quirks |= XHCI_TRUST_TX_LENGTH;
 }

 if (pdev->vendor == PCI_VENDOR_ID_NEC)
  xhci->quirks |= XHCI_NEC_HOST;

 if (pdev->vendor == PCI_VENDOR_ID_AMD && xhci->hci_version == 0x96)
  xhci->quirks |= XHCI_AMD_0x96_HOST;


 if (pdev->vendor == PCI_VENDOR_ID_AMD && usb_amd_find_chipset_info())
  xhci->quirks |= XHCI_AMD_PLL_FIX;
 if (pdev->vendor == PCI_VENDOR_ID_INTEL) {
  xhci->quirks |= XHCI_LPM_SUPPORT;
  xhci->quirks |= XHCI_INTEL_HOST;
 }
 if (pdev->vendor == PCI_VENDOR_ID_INTEL &&
   pdev->device == PCI_DEVICE_ID_INTEL_PANTHERPOINT_XHCI) {
  xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
  xhci->quirks |= XHCI_EP_LIMIT_QUIRK;
  xhci->limit_active_eps = 64;
  xhci->quirks |= XHCI_SW_BW_CHECKING;
  xhci->quirks |= XHCI_SPURIOUS_REBOOT;
  xhci->quirks |= XHCI_AVOID_BEI;
 }
 if (pdev->vendor == PCI_VENDOR_ID_ETRON &&
   pdev->device == PCI_DEVICE_ID_ASROCK_P67) {
  xhci->quirks |= XHCI_RESET_ON_RESUME;
  xhci_dbg(xhci, "QUIRK: Resetting on resume\n");
  xhci->quirks |= XHCI_TRUST_TX_LENGTH;
 }
 if (pdev->vendor == PCI_VENDOR_ID_VIA)
  xhci->quirks |= XHCI_RESET_ON_RESUME;
}
