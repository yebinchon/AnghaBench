
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ nowayout ;
 int sh_wdt_start () ;
 int shwdt_is_open ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int sh_wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &shwdt_is_open))
  return -EBUSY;
 if (nowayout)
  __module_get(THIS_MODULE);

 sh_wdt_start();

 return nonseekable_open(inode, file);
}
