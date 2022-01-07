
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOP_WDTCR_EN ;
 int IOP_WDTCR_EN_ARM ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;
 int write_wdtcr (int ) ;

__attribute__((used)) static void wdt_enable(void)
{



 spin_lock(&wdt_lock);
 write_wdtcr(IOP_WDTCR_EN_ARM);
 write_wdtcr(IOP_WDTCR_EN);
 spin_unlock(&wdt_lock);
}
