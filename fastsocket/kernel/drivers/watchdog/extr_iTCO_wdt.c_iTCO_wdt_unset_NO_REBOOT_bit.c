
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int iTCO_version; int pdev; int gcs; } ;


 int EIO ;
 TYPE_1__ iTCO_wdt_private ;
 int pci_read_config_dword (int ,int,int*) ;
 int pci_write_config_dword (int ,int,int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int iTCO_wdt_unset_NO_REBOOT_bit(void)
{
 int ret = 0;
 u32 val32;


 if (iTCO_wdt_private.iTCO_version == 2) {
  val32 = readl(iTCO_wdt_private.gcs);
  val32 &= 0xffffffdf;
  writel(val32, iTCO_wdt_private.gcs);

  val32 = readl(iTCO_wdt_private.gcs);
  if (val32 & 0x00000020)
   ret = -EIO;
 } else if (iTCO_wdt_private.iTCO_version == 1) {
  pci_read_config_dword(iTCO_wdt_private.pdev, 0xd4, &val32);
  val32 &= 0xfffffffd;
  pci_write_config_dword(iTCO_wdt_private.pdev, 0xd4, val32);

  pci_read_config_dword(iTCO_wdt_private.pdev, 0xd4, &val32);
  if (val32 & 0x00000002)
   ret = -EIO;
 }

 return ret;
}
