
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device {int dev; } ;
struct mpc5200_wdt {int dummy; } ;
typedef int pm_message_t ;


 struct mpc5200_wdt* dev_get_drvdata (int *) ;
 int mpc5200_wdt_stop (struct mpc5200_wdt*) ;

__attribute__((used)) static int mpc5200_wdt_suspend(struct of_device *op, pm_message_t state)
{
 struct mpc5200_wdt *wdt = dev_get_drvdata(&op->dev);
 mpc5200_wdt_stop(wdt);
 return 0;
}
