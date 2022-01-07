
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_ST_EXTEN ;
 int AT91_ST_WDMR ;
 int at91_sys_write (int ,int ) ;

__attribute__((used)) static inline void at91_wdt_stop(void)
{
 at91_sys_write(AT91_ST_WDMR, AT91_ST_EXTEN);
}
