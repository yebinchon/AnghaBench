
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int ar7_wdt_enable_wdt () ;
 scalar_t__ expect_close ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wdt_is_open ;

__attribute__((used)) static int ar7_wdt_open(struct inode *inode, struct file *file)
{

 if (test_and_set_bit(0, &wdt_is_open))
  return -EBUSY;
 ar7_wdt_enable_wdt();
 expect_close = 0;

 return nonseekable_open(inode, file);
}
