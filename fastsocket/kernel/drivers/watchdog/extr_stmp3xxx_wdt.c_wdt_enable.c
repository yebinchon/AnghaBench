
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BM_RTC_CTRL_WATCHDOGEN ;
 int BV_RTC_PERSISTENT1_GENERAL__RTC_FORCE_UPDATER ;
 scalar_t__ HW_RTC_CTRL ;
 scalar_t__ HW_RTC_PERSISTENT1 ;
 scalar_t__ HW_RTC_WATCHDOG ;
 scalar_t__ REGS_RTC_BASE ;
 int __raw_writel (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stmp3xxx_setl (int ,scalar_t__) ;
 int stmp3xxx_wdt_io_lock ;

__attribute__((used)) static void wdt_enable(u32 value)
{
 spin_lock(&stmp3xxx_wdt_io_lock);
 __raw_writel(value, REGS_RTC_BASE + HW_RTC_WATCHDOG);
 stmp3xxx_setl(BM_RTC_CTRL_WATCHDOGEN, REGS_RTC_BASE + HW_RTC_CTRL);
 stmp3xxx_setl(BV_RTC_PERSISTENT1_GENERAL__RTC_FORCE_UPDATER,
   REGS_RTC_BASE + HW_RTC_PERSISTENT1);
 spin_unlock(&stmp3xxx_wdt_io_lock);
}
