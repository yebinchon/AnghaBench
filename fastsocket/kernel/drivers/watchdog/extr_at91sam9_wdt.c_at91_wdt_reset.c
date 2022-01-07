
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_WDT_CR ;
 int AT91_WDT_KEY ;
 int AT91_WDT_WDRSTT ;
 int at91_sys_write (int ,int) ;

__attribute__((used)) static inline void at91_wdt_reset(void)
{
 at91_sys_write(AT91_WDT_CR, AT91_WDT_KEY | AT91_WDT_WDRSTT);
}
