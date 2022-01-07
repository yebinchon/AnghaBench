
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc5200_wdt {int count; int io_lock; TYPE_1__* regs; } ;
struct TYPE_2__ {int mode; int count; } ;


 int GPT_MODE_CE ;
 int GPT_MODE_MS_TIMER ;
 int GPT_MODE_WDT ;
 int out_be32 (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mpc5200_wdt_start(struct mpc5200_wdt *wdt)
{
 spin_lock(&wdt->io_lock);

 out_be32(&wdt->regs->mode, 0);

 out_be32(&wdt->regs->count, 0x0 | wdt->count);

 out_be32(&wdt->regs->mode, GPT_MODE_CE | GPT_MODE_WDT |
      GPT_MODE_MS_TIMER);
 spin_unlock(&wdt->io_lock);

 return 0;
}
