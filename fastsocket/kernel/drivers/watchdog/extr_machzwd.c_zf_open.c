
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
 scalar_t__ test_and_set_bit (int ,int *) ;
 int zf_is_open ;
 int zf_timer_on () ;

__attribute__((used)) static int zf_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &zf_is_open))
  return -EBUSY;
 if (nowayout)
  __module_get(THIS_MODULE);
 zf_timer_on();
 return nonseekable_open(inode, file);
}
