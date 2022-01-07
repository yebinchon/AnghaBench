
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDEN_DISABLE ;
 int bfin_write_WDOG_CTL (int ) ;
 int stampit () ;

__attribute__((used)) static int bfin_wdt_stop(void)
{
 stampit();
 bfin_write_WDOG_CTL(WDEN_DISABLE);
 return 0;
}
