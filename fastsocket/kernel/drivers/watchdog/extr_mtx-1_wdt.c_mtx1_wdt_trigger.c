
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int gpio; int lock; int stop; int timer; scalar_t__ queue; scalar_t__ running; } ;


 int GPIO2_DIR ;
 scalar_t__ MTX1_WDT_INTERVAL ;
 int au_readl (int ) ;
 int au_writel (int,int ) ;
 int complete (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 TYPE_1__ mtx1_wdt_device ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ ticks ;

__attribute__((used)) static void mtx1_wdt_trigger(unsigned long unused)
{
 u32 tmp;

 spin_lock(&mtx1_wdt_device.lock);
 if (mtx1_wdt_device.running)
  ticks--;



 tmp = au_readl(GPIO2_DIR);
 tmp = (tmp & ~(1 << mtx1_wdt_device.gpio)) |
       ((~tmp) & (1 << mtx1_wdt_device.gpio));
 au_writel(tmp, GPIO2_DIR);

 if (mtx1_wdt_device.queue && ticks)
  mod_timer(&mtx1_wdt_device.timer, jiffies + MTX1_WDT_INTERVAL);
 else
  complete(&mtx1_wdt_device.stop);
 spin_unlock(&mtx1_wdt_device.lock);
}
