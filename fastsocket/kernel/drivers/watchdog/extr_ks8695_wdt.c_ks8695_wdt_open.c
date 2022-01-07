
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int ks8695_wdt_start () ;
 int ks8695wdt_busy ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int ks8695_wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &ks8695wdt_busy))
  return -EBUSY;

 ks8695_wdt_start();
 return nonseekable_open(inode, file);
}
