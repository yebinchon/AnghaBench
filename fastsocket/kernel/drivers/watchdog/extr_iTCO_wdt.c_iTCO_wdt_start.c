
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iTCO_version; int io_lock; int smi_res; } ;


 int EIO ;
 int TCO1_CNT ;
 int TCO_RLD ;
 int heartbeat ;
 int iTCO_vendor_pre_start (int ,int ) ;
 TYPE_1__ iTCO_wdt_private ;
 scalar_t__ iTCO_wdt_unset_NO_REBOOT_bit () ;
 unsigned int inw (int ) ;
 int outb (int,int ) ;
 int outw (unsigned int,int ) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int iTCO_wdt_start(void)
{
 unsigned int val;

 spin_lock(&iTCO_wdt_private.io_lock);

 iTCO_vendor_pre_start(iTCO_wdt_private.smi_res, heartbeat);


 if (iTCO_wdt_unset_NO_REBOOT_bit()) {
  spin_unlock(&iTCO_wdt_private.io_lock);
  pr_err("failed to reset NO_REBOOT flag, reboot disabled by hardware/BIOS\n");
  return -EIO;
 }



 if (iTCO_wdt_private.iTCO_version == 2)
  outw(0x01, TCO_RLD);
 else if (iTCO_wdt_private.iTCO_version == 1)
  outb(0x01, TCO_RLD);


 val = inw(TCO1_CNT);
 val &= 0xf7ff;
 outw(val, TCO1_CNT);
 val = inw(TCO1_CNT);
 spin_unlock(&iTCO_wdt_private.io_lock);

 if (val & 0x0800)
  return -1;
 return 0;
}
