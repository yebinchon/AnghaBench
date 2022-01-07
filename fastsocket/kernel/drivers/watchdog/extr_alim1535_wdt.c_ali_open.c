
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int ali_is_open ;
 int ali_start () ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int ali_open(struct inode *inode, struct file *file)
{

 if (test_and_set_bit(0, &ali_is_open))
  return -EBUSY;


 ali_start();
 return nonseekable_open(inode, file);
}
