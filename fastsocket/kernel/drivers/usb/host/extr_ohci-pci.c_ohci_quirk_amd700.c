
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_hcd {int dummy; } ;
struct pci_dev {int dummy; } ;
struct ohci_hcd {int flags; } ;


 int OHCI_QUIRK_AMD_PLL ;
 int OHCI_QUIRK_AMD_PREFETCH ;
 int PCI_DEVICE_ID_ATI_SBX00_SMBUS ;
 int PCI_REVISION_ID ;
 int PCI_VENDOR_ID_ATI ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_dbg (struct ohci_hcd*,char*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,int *) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 scalar_t__ usb_amd_find_chipset_info () ;

__attribute__((used)) static int ohci_quirk_amd700(struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci(hcd);
 struct pci_dev *amd_smbus_dev;
 u8 rev = 0;

 if (usb_amd_find_chipset_info())
  ohci->flags |= OHCI_QUIRK_AMD_PLL;

 amd_smbus_dev = pci_get_device(PCI_VENDOR_ID_ATI,
   PCI_DEVICE_ID_ATI_SBX00_SMBUS, ((void*)0));
 if (!amd_smbus_dev)
  return 0;

 pci_read_config_byte(amd_smbus_dev, PCI_REVISION_ID, &rev);


 if ((rev >= 0x40) && (rev <= 0x4f)) {
  ohci->flags |= OHCI_QUIRK_AMD_PREFETCH;
  ohci_dbg(ohci, "enabled AMD prefetch quirk\n");
 }

 pci_dev_put(amd_smbus_dev);
 amd_smbus_dev = ((void*)0);

 return 0;
}
