
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc5200_wdt {int io_lock; TYPE_1__* regs; } ;
struct TYPE_2__ {int mode; } ;


 int out_be32 (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mpc5200_wdt_stop(struct mpc5200_wdt *wdt)
{
 spin_lock(&wdt->io_lock);

 out_be32(&wdt->regs->mode, 0);
 spin_unlock(&wdt->io_lock);
 return 0;
}
