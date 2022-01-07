
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int ibwdt_is_open ;
 int ibwdt_ping () ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ nowayout ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int ibwdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &ibwdt_is_open))
  return -EBUSY;
 if (nowayout)
  __module_get(THIS_MODULE);


 ibwdt_ping();
 return nonseekable_open(inode, file);
}
