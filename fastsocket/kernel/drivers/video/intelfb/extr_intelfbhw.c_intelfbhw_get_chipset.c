
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int device; } ;
struct intelfb_info {char* name; int mobile; void* pll_index; int chipset; } ;


 int INTEL_830M ;
 int INTEL_845G ;
 int INTEL_852GM ;
 int INTEL_852GME ;
 int INTEL_854 ;
 int INTEL_855GM ;
 int INTEL_855GME ;
 int INTEL_85XGM ;
 int INTEL_85X_CAPID ;
 int INTEL_85X_VARIANT_MASK ;
 int INTEL_85X_VARIANT_SHIFT ;
 int INTEL_865G ;
 int INTEL_915G ;
 int INTEL_915GM ;
 int INTEL_945G ;
 int INTEL_945GM ;
 int INTEL_945GME ;
 int INTEL_965G ;
 int INTEL_965GM ;
 void* PLLS_I8xx ;
 void* PLLS_I9xx ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;

int intelfbhw_get_chipset(struct pci_dev *pdev, struct intelfb_info *dinfo)
{
 u32 tmp;
 if (!pdev || !dinfo)
  return 1;

 switch (pdev->device) {
 case 139:
  dinfo->name = "Intel(R) 830M";
  dinfo->chipset = INTEL_830M;
  dinfo->mobile = 1;
  dinfo->pll_index = PLLS_I8xx;
  return 0;
 case 138:
  dinfo->name = "Intel(R) 845G";
  dinfo->chipset = INTEL_845G;
  dinfo->mobile = 0;
  dinfo->pll_index = PLLS_I8xx;
  return 0;
 case 137:
  dinfo->mobile = 1;
  dinfo->name = "Intel(R) 854";
  dinfo->chipset = INTEL_854;
  return 0;
 case 136:
  tmp = 0;
  dinfo->mobile = 1;
  dinfo->pll_index = PLLS_I8xx;
  pci_read_config_dword(pdev, INTEL_85X_CAPID, &tmp);
  switch ((tmp >> INTEL_85X_VARIANT_SHIFT) &
   INTEL_85X_VARIANT_MASK) {
  case 140:
   dinfo->name = "Intel(R) 855GME";
   dinfo->chipset = INTEL_855GME;
   return 0;
  case 141:
   dinfo->name = "Intel(R) 855GM";
   dinfo->chipset = INTEL_855GM;
   return 0;
  case 142:
   dinfo->name = "Intel(R) 852GME";
   dinfo->chipset = INTEL_852GME;
   return 0;
  case 143:
   dinfo->name = "Intel(R) 852GM";
   dinfo->chipset = INTEL_852GM;
   return 0;
  default:
   dinfo->name = "Intel(R) 852GM/855GM";
   dinfo->chipset = INTEL_85XGM;
   return 0;
  }
  break;
 case 135:
  dinfo->name = "Intel(R) 865G";
  dinfo->chipset = INTEL_865G;
  dinfo->mobile = 0;
  dinfo->pll_index = PLLS_I8xx;
  return 0;
 case 134:
  dinfo->name = "Intel(R) 915G";
  dinfo->chipset = INTEL_915G;
  dinfo->mobile = 0;
  dinfo->pll_index = PLLS_I9xx;
  return 0;
 case 133:
  dinfo->name = "Intel(R) 915GM";
  dinfo->chipset = INTEL_915GM;
  dinfo->mobile = 1;
  dinfo->pll_index = PLLS_I9xx;
  return 0;
 case 132:
  dinfo->name = "Intel(R) 945G";
  dinfo->chipset = INTEL_945G;
  dinfo->mobile = 0;
  dinfo->pll_index = PLLS_I9xx;
  return 0;
 case 131:
  dinfo->name = "Intel(R) 945GM";
  dinfo->chipset = INTEL_945GM;
  dinfo->mobile = 1;
  dinfo->pll_index = PLLS_I9xx;
  return 0;
 case 130:
  dinfo->name = "Intel(R) 945GME";
  dinfo->chipset = INTEL_945GME;
  dinfo->mobile = 1;
  dinfo->pll_index = PLLS_I9xx;
  return 0;
 case 129:
  dinfo->name = "Intel(R) 965G";
  dinfo->chipset = INTEL_965G;
  dinfo->mobile = 0;
  dinfo->pll_index = PLLS_I9xx;
  return 0;
 case 128:
  dinfo->name = "Intel(R) 965GM";
  dinfo->chipset = INTEL_965GM;
  dinfo->mobile = 1;
  dinfo->pll_index = PLLS_I9xx;
  return 0;
 default:
  return 1;
 }
}
