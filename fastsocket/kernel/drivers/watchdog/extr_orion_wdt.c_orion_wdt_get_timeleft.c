
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_VAL ;
 int readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;
 int wdt_tclk ;

__attribute__((used)) static int orion_wdt_get_timeleft(int *time_left)
{
 spin_lock(&wdt_lock);
 *time_left = readl(WDT_VAL) / wdt_tclk;
 spin_unlock(&wdt_lock);
 return 0;
}
