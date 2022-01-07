
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ICTL_RESET ;
 int WDEN_ENABLE ;
 int bfin_write_WDOG_CTL (int) ;
 int stampit () ;

__attribute__((used)) static int bfin_wdt_start(void)
{
 stampit();
 bfin_write_WDOG_CTL(WDEN_ENABLE | ICTL_RESET);
 return 0;
}
