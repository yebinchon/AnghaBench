
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_lock; } ;


 int CLR ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* wdt ;
 int wdt_writel (TYPE_1__*,int ,int) ;

__attribute__((used)) static inline void at32_wdt_pat(void)
{
 spin_lock(&wdt->io_lock);
 wdt_writel(wdt, CLR, 0x42);
 spin_unlock(&wdt->io_lock);
}
