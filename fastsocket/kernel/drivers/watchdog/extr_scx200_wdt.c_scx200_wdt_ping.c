
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SCx200_WDT_WDTO ;
 int outw (int ,scalar_t__) ;
 scalar_t__ scx200_cb_base ;
 int scx_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdto_restart ;

__attribute__((used)) static void scx200_wdt_ping(void)
{
 spin_lock(&scx_lock);
 outw(wdto_restart, scx200_cb_base + SCx200_WDT_WDTO);
 spin_unlock(&scx_lock);
}
