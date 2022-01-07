
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_wdt {int state; } ;
struct inode {int dummy; } ;
struct file {void* private_data; } ;


 int EBUSY ;
 int TWL4030_WDT_STATE_ACTIVE ;
 int nonseekable_open (struct inode*,struct file*) ;
 struct twl4030_wdt* platform_get_drvdata (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int twl4030_wdt_dev ;
 int twl4030_wdt_enable (struct twl4030_wdt*) ;

__attribute__((used)) static int twl4030_wdt_open(struct inode *inode, struct file *file)
{
 struct twl4030_wdt *wdt = platform_get_drvdata(twl4030_wdt_dev);


 if (test_and_set_bit(0, &wdt->state))
  return -EBUSY;

 wdt->state |= TWL4030_WDT_STATE_ACTIVE;
 file->private_data = (void *) wdt;

 twl4030_wdt_enable(wdt);
 return nonseekable_open(inode, file);
}
