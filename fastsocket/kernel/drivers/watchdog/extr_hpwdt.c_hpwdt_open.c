
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int hpwdt_is_open ;
 int hpwdt_ping () ;
 int hpwdt_start () ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int hpwdt_open(struct inode *inode, struct file *file)
{

 if (test_and_set_bit(0, &hpwdt_is_open))
  return -EBUSY;


 hpwdt_start();
 hpwdt_ping();

 return nonseekable_open(inode, file);
}
