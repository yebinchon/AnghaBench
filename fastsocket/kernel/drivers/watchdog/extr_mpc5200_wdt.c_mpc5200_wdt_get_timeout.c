
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc5200_wdt {int count; int ipb_freq; } ;



__attribute__((used)) static int mpc5200_wdt_get_timeout(struct mpc5200_wdt *wdt)
{
 return wdt->count * 0x10000 / wdt->ipb_freq;
}
