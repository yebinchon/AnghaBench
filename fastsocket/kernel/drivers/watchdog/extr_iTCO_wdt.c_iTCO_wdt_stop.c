
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_lock; int smi_res; } ;


 int TCO1_CNT ;
 int iTCO_vendor_pre_stop (int ) ;
 TYPE_1__ iTCO_wdt_private ;
 int iTCO_wdt_set_NO_REBOOT_bit () ;
 unsigned int inw (int ) ;
 int outw (unsigned int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int iTCO_wdt_stop(void)
{
 unsigned int val;

 spin_lock(&iTCO_wdt_private.io_lock);

 iTCO_vendor_pre_stop(iTCO_wdt_private.smi_res);


 val = inw(TCO1_CNT);
 val |= 0x0800;
 outw(val, TCO1_CNT);
 val = inw(TCO1_CNT);


 iTCO_wdt_set_NO_REBOOT_bit();

 spin_unlock(&iTCO_wdt_private.io_lock);

 if ((val & 0x0800) == 0)
  return -1;
 return 0;
}
