
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* IXP2000_RESET0 ;
 int* IXP2000_T4_CLD ;
 int* IXP2000_T4_CTL ;
 int* IXP2000_TWDE ;
 int TIMER_DIVIDER_256 ;
 int TIMER_ENABLE ;
 int WDT_ENABLE ;
 int WDT_RESET_ENABLE ;
 int heartbeat ;
 int ixp2000_reg_write (int*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;
 int wdt_tick_rate ;

__attribute__((used)) static void wdt_enable(void)
{
 spin_lock(&wdt_lock);
 ixp2000_reg_write(IXP2000_RESET0, *(IXP2000_RESET0) | WDT_RESET_ENABLE);
 ixp2000_reg_write(IXP2000_TWDE, WDT_ENABLE);
 ixp2000_reg_write(IXP2000_T4_CLD, heartbeat * wdt_tick_rate);
 ixp2000_reg_write(IXP2000_T4_CTL, TIMER_DIVIDER_256 | TIMER_ENABLE);
 spin_unlock(&wdt_lock);
}
