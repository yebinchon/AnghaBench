
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDEN_DISABLE ;
 int WDEN_MASK ;
 int bfin_read_WDOG_CTL () ;
 int stampit () ;

__attribute__((used)) static int bfin_wdt_running(void)
{
 stampit();
 return ((bfin_read_WDOG_CTL() & WDEN_MASK) != WDEN_DISABLE);
}
