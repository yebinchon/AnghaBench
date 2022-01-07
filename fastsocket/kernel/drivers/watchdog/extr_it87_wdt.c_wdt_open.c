
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int WDTS_DEV_OPEN ;
 int WDTS_LOCKED ;
 int WDTS_TIMER_RUN ;
 int __module_get (int ) ;
 scalar_t__ exclusive ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ nowayout ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wdt_start () ;
 int wdt_status ;

__attribute__((used)) static int wdt_open(struct inode *inode, struct file *file)
{
 if (exclusive && test_and_set_bit(WDTS_DEV_OPEN, &wdt_status))
  return -EBUSY;
 if (!test_and_set_bit(WDTS_TIMER_RUN, &wdt_status)) {
  if (nowayout && !test_and_set_bit(WDTS_LOCKED, &wdt_status))
   __module_get(THIS_MODULE);
  wdt_start();
 }
 return nonseekable_open(inode, file);
}
