
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_device_id {int driver_data; int member_0; } ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int PCI_DEVICE (int,int) ;
 int PCI_VDEVICE (int const,int) ;

 struct pci_device_id* pci_match_id (struct pci_device_id const*,struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static void configure_pcie_bridge(struct pci_dev *pci)
{
 enum { PEX811X, PI7C9X110 };
 static const struct pci_device_id bridge_ids[] = {
  { PCI_VDEVICE(128, 0x8111), .driver_data = PEX811X },
  { PCI_VDEVICE(128, 0x8112), .driver_data = PEX811X },
  { PCI_DEVICE(0x12d8, 0xe110), .driver_data = PI7C9X110 },
  { }
 };
 struct pci_dev *bridge;
 const struct pci_device_id *id;
 u32 tmp;

 if (!pci->bus || !pci->bus->self)
  return;
 bridge = pci->bus->self;

 id = pci_match_id(bridge_ids, bridge);
 if (!id)
  return;

 switch (id->driver_data) {
 case PEX811X:
  pci_read_config_dword(bridge, 0x48, &tmp);
  tmp |= 1;
  tmp |= 1 << 11;
  pci_write_config_dword(bridge, 0x48, tmp);

  pci_write_config_dword(bridge, 0x84, 0x0c);
  pci_read_config_dword(bridge, 0x88, &tmp);
  tmp &= ~(7 << 27);
  tmp |= 2 << 27;
  pci_write_config_dword(bridge, 0x88, tmp);
  break;

 case PI7C9X110:
  pci_read_config_dword(bridge, 0x40, &tmp);
  tmp |= 1;
  pci_write_config_dword(bridge, 0x40, tmp);
  break;
 }
}
