
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int device; } ;


 int ERR_MSG (char*,...) ;


 int INTEL_830_GMCH_GMS_MASK ;




 int INTEL_855_GMCH_GMS_MASK ;







 int INTEL_GMCH_CTRL ;
 int INTEL_GMCH_MEM_64M ;
 int INTEL_GMCH_MEM_MASK ;
 int KB (int) ;
 int MB (int) ;
 int PCI_DEVFN (int ,int ) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_bus_and_slot (int ,int ) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_resource_start (struct pci_dev*,int) ;

int intelfbhw_get_memory(struct pci_dev *pdev, int *aperture_size,
    int *stolen_size)
{
 struct pci_dev *bridge_dev;
 u16 tmp;
 int stolen_overhead;

 if (!pdev || !aperture_size || !stolen_size)
  return 1;


 if (!(bridge_dev = pci_get_bus_and_slot(0, PCI_DEVFN(0, 0)))) {
  ERR_MSG("cannot find bridge device\n");
  return 1;
 }


 tmp = 0;
 pci_read_config_word(bridge_dev, INTEL_GMCH_CTRL, &tmp);
 pci_dev_put(bridge_dev);

 switch (pdev->device) {
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:



  if (pci_resource_start(pdev, 2) & 0x08000000)
   *aperture_size = MB(128);
  else
   *aperture_size = MB(256);
  break;
 default:
  if ((tmp & INTEL_GMCH_MEM_MASK) == INTEL_GMCH_MEM_64M)
   *aperture_size = MB(64);
  else
   *aperture_size = MB(128);
  break;
 }



 stolen_overhead = (*aperture_size / MB(1)) + 4;
 switch(pdev->device) {
 case 136:
 case 135:
  switch (tmp & INTEL_830_GMCH_GMS_MASK) {
  case 146:
   *stolen_size = KB(512) - KB(stolen_overhead);
   return 0;
  case 147:
   *stolen_size = MB(1) - KB(stolen_overhead);
   return 0;
  case 145:
   *stolen_size = MB(8) - KB(stolen_overhead);
   return 0;
  case 148:
   ERR_MSG("only local memory found\n");
   return 1;
  case 149:
   ERR_MSG("video memory is disabled\n");
   return 1;
  default:
   ERR_MSG("unexpected GMCH_GMS value: 0x%02x\n",
    tmp & INTEL_830_GMCH_GMS_MASK);
   return 1;
  }
  break;
 default:
  switch (tmp & INTEL_855_GMCH_GMS_MASK) {
  case 142:
   *stolen_size = MB(1) - KB(stolen_overhead);
   return 0;
  case 140:
   *stolen_size = MB(4) - KB(stolen_overhead);
   return 0;
  case 139:
   *stolen_size = MB(8) - KB(stolen_overhead);
   return 0;
  case 143:
   *stolen_size = MB(16) - KB(stolen_overhead);
   return 0;
  case 141:
   *stolen_size = MB(32) - KB(stolen_overhead);
   return 0;
  case 138:
   *stolen_size = MB(48) - KB(stolen_overhead);
   return 0;
  case 137:
   *stolen_size = MB(64) - KB(stolen_overhead);
   return 0;
  case 144:
   ERR_MSG("video memory is disabled\n");
   return 0;
  default:
   ERR_MSG("unexpected GMCH_GMS value: 0x%02x\n",
    tmp & INTEL_855_GMCH_GMS_MASK);
   return 1;
  }
 }
}
