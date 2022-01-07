
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device {int dev; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;
struct mpc5200_wdt {TYPE_1__ mem; int regs; int miscdev; } ;


 struct mpc5200_wdt* dev_get_drvdata (int *) ;
 int iounmap (int ) ;
 int kfree (struct mpc5200_wdt*) ;
 int misc_deregister (int *) ;
 int mpc5200_wdt_stop (struct mpc5200_wdt*) ;
 int release_mem_region (scalar_t__,scalar_t__) ;

__attribute__((used)) static int mpc5200_wdt_remove(struct of_device *op)
{
 struct mpc5200_wdt *wdt = dev_get_drvdata(&op->dev);

 mpc5200_wdt_stop(wdt);
 misc_deregister(&wdt->miscdev);
 iounmap(wdt->regs);
 release_mem_region(wdt->mem.start, wdt->mem.end - wdt->mem.start + 1);
 kfree(wdt);

 return 0;
}
