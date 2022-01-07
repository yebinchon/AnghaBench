
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_VAL ;
 int heartbeat ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;
 int wdt_tclk ;
 int writel (int,int ) ;

__attribute__((used)) static void orion_wdt_ping(void)
{
 spin_lock(&wdt_lock);


 writel(wdt_tclk * heartbeat, WDT_VAL);

 spin_unlock(&wdt_lock);
}
