
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcore_wdt {int timer_alive; } ;
struct inode {int dummy; } ;
struct file {struct mpcore_wdt* private_data; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int mpcore_wdt_dev ;
 int mpcore_wdt_start (struct mpcore_wdt*) ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ nowayout ;
 struct mpcore_wdt* platform_get_drvdata (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int mpcore_wdt_open(struct inode *inode, struct file *file)
{
 struct mpcore_wdt *wdt = platform_get_drvdata(mpcore_wdt_dev);

 if (test_and_set_bit(0, &wdt->timer_alive))
  return -EBUSY;

 if (nowayout)
  __module_get(THIS_MODULE);

 file->private_data = wdt;




 mpcore_wdt_start(wdt);

 return nonseekable_open(inode, file);
}
