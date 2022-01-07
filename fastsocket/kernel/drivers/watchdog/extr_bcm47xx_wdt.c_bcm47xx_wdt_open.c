
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int bcm47xx_wdt_busy ;
 int bcm47xx_wdt_start () ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int bcm47xx_wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &bcm47xx_wdt_busy))
  return -EBUSY;

 bcm47xx_wdt_start();
 return nonseekable_open(inode, file);
}
