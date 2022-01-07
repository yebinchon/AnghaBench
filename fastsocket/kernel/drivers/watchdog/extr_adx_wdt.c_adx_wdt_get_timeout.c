
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adx_wdt {int timeout; } ;



__attribute__((used)) static void adx_wdt_get_timeout(struct adx_wdt *wdt, unsigned long *seconds)
{
 *seconds = wdt->timeout / 1000;
}
