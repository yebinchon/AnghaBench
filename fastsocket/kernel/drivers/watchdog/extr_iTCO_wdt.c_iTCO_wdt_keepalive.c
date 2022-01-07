
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iTCO_version; int io_lock; int smi_res; } ;


 int TCO1_STS ;
 int TCO_RLD ;
 int heartbeat ;
 int iTCO_vendor_pre_keepalive (int ,int ) ;
 TYPE_1__ iTCO_wdt_private ;
 int outb (int,int ) ;
 int outw (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int iTCO_wdt_keepalive(void)
{
 spin_lock(&iTCO_wdt_private.io_lock);

 iTCO_vendor_pre_keepalive(iTCO_wdt_private.smi_res, heartbeat);


 if (iTCO_wdt_private.iTCO_version == 2)
  outw(0x01, TCO_RLD);
 else if (iTCO_wdt_private.iTCO_version == 1) {


  outw(0x0008, TCO1_STS);

  outb(0x01, TCO_RLD);
 }

 spin_unlock(&iTCO_wdt_private.io_lock);
 return 0;
}
