
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int WDT_IN_USE ;
 int WDT_OK_TO_CLOSE ;
 int clear_bit (int ,int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wdt_startup () ;
 int wdt_status ;

__attribute__((used)) static int ep93xx_wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(WDT_IN_USE, &wdt_status))
  return -EBUSY;

 clear_bit(WDT_OK_TO_CLOSE, &wdt_status);

 wdt_startup();

 return nonseekable_open(inode, file);
}
