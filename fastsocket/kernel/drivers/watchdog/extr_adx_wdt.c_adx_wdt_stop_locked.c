
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adx_wdt {int state; scalar_t__ base; } ;


 scalar_t__ ADX_WDT_CONTROL ;
 int ADX_WDT_CONTROL_ENABLE ;
 int WDT_STATE_STOP ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void adx_wdt_stop_locked(struct adx_wdt *wdt)
{
 u32 ctrl;

 ctrl = readl(wdt->base + ADX_WDT_CONTROL);
 ctrl &= ~ADX_WDT_CONTROL_ENABLE;
 writel(ctrl, wdt->base + ADX_WDT_CONTROL);
 wdt->state = WDT_STATE_STOP;
}
