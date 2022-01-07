
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfin_write_WDOG_STAT (int ) ;
 int stampit () ;

__attribute__((used)) static int bfin_wdt_keepalive(void)
{
 stampit();
 bfin_write_WDOG_STAT(0);
 return 0;
}
