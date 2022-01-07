
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EP93XX_WDT_WATCHDOG ;
 int __raw_writew (int,int ) ;

__attribute__((used)) static void wdt_disable(void)
{
 __raw_writew(0xaa55, EP93XX_WDT_WATCHDOG);
}
