
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int driver_open ;
 int nonseekable_open (struct inode*,struct file*) ;
 int orphan_timer ;
 int softdog_keepalive () ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int softdog_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &driver_open))
  return -EBUSY;
 if (!test_and_clear_bit(0, &orphan_timer))
  __module_get(THIS_MODULE);



 softdog_keepalive();
 return nonseekable_open(inode, file);
}
