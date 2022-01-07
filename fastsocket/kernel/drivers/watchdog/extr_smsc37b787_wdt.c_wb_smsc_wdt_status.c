
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDIOF_KEEPALIVEPING ;
 scalar_t__ wb_smsc_wdt_get_timeout () ;

__attribute__((used)) static int wb_smsc_wdt_status(void)
{
 return (wb_smsc_wdt_get_timeout() == 0) ? 0 : WDIOF_KEEPALIVEPING;
}
