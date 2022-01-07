
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int it8712f_wdt_enable () ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wdt_open ;

__attribute__((used)) static int it8712f_wdt_open(struct inode *inode, struct file *file)
{

 if (test_and_set_bit(0, &wdt_open))
  return -EBUSY;
 it8712f_wdt_enable();
 return nonseekable_open(inode, file);
}
