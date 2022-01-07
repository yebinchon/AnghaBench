
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct twl4030_wdt {int state; TYPE_1__ miscdev; } ;
struct inode {int dummy; } ;
struct file {struct twl4030_wdt* private_data; } ;


 int EFAULT ;
 int TWL4030_WDT_STATE_ACTIVE ;
 int clear_bit (int ,int *) ;
 int dev_alert (int ,char*) ;
 scalar_t__ nowayout ;
 scalar_t__ twl4030_wdt_disable (struct twl4030_wdt*) ;
 int twl4030_wdt_enable (struct twl4030_wdt*) ;

__attribute__((used)) static int twl4030_wdt_release(struct inode *inode, struct file *file)
{
 struct twl4030_wdt *wdt = file->private_data;
 if (nowayout) {
  dev_alert(wdt->miscdev.parent,
         "Unexpected close, watchdog still running!\n");
  twl4030_wdt_enable(wdt);
 } else {
  if (twl4030_wdt_disable(wdt))
   return -EFAULT;
  wdt->state &= ~TWL4030_WDT_STATE_ACTIVE;
 }

 clear_bit(0, &wdt->state);
 return 0;
}
