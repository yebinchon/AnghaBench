
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int nonseekable_open (struct inode*,struct file*) ;
 int nuc900_wdt_start () ;
 int nuc900wdt_busy ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int nuc900_wdt_open(struct inode *inode, struct file *file)
{

 if (test_and_set_bit(0, &nuc900wdt_busy))
  return -EBUSY;

 nuc900_wdt_start();

 return nonseekable_open(inode, file);
}
