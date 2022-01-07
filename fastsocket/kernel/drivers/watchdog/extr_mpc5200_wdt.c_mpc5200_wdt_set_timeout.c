
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc5200_wdt {int count; int ipb_freq; } ;



__attribute__((used)) static void mpc5200_wdt_set_timeout(struct mpc5200_wdt *wdt, int timeout)
{

 wdt->count = (wdt->ipb_freq + 0xffff) / 0x10000 * timeout;

 if (wdt->count > 0xffff)
  wdt->count = 0xffff;
}
