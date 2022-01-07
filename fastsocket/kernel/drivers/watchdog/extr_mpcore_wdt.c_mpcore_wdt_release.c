
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcore_wdt {int expect_close; int timer_alive; int dev; } ;
struct inode {int dummy; } ;
struct file {struct mpcore_wdt* private_data; } ;


 int KERN_CRIT ;
 int clear_bit (int ,int *) ;
 int dev_printk (int ,int ,char*) ;
 int mpcore_wdt_keepalive (struct mpcore_wdt*) ;
 int mpcore_wdt_stop (struct mpcore_wdt*) ;

__attribute__((used)) static int mpcore_wdt_release(struct inode *inode, struct file *file)
{
 struct mpcore_wdt *wdt = file->private_data;





 if (wdt->expect_close == 42)
  mpcore_wdt_stop(wdt);
 else {
  dev_printk(KERN_CRIT, wdt->dev,
    "unexpected close, not stopping watchdog!\n");
  mpcore_wdt_keepalive(wdt);
 }
 clear_bit(0, &wdt->timer_alive);
 wdt->expect_close = 0;
 return 0;
}
