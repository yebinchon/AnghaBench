
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int bfin_wdt_keepalive () ;
 int bfin_wdt_start () ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ nowayout ;
 int open_check ;
 int stampit () ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int bfin_wdt_open(struct inode *inode, struct file *file)
{
 stampit();

 if (test_and_set_bit(0, &open_check))
  return -EBUSY;

 if (nowayout)
  __module_get(THIS_MODULE);

 bfin_wdt_keepalive();
 bfin_wdt_start();

 return nonseekable_open(inode, file);
}
