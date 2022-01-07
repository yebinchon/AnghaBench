
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int MV64x60_WDOG_FLAG_OPENED ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int mv64x60_wdt_handler_enable () ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ nowayout ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wdt_flags ;

__attribute__((used)) static int mv64x60_wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(MV64x60_WDOG_FLAG_OPENED, &wdt_flags))
  return -EBUSY;

 if (nowayout)
  __module_get(THIS_MODULE);

 mv64x60_wdt_handler_enable();

 return nonseekable_open(inode, file);
}
