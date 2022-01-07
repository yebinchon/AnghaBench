
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 scalar_t__ expect_close ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ nowayout ;
 int open_lock ;
 int s3c2410wdt_start () ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int s3c2410wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &open_lock))
  return -EBUSY;

 if (nowayout)
  __module_get(THIS_MODULE);

 expect_close = 0;


 s3c2410wdt_start();
 return nonseekable_open(inode, file);
}
