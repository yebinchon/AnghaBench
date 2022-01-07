
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int inuse; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ nowayout ;
 TYPE_1__ rc32434_wdt_device ;
 int rc32434_wdt_ping () ;
 int rc32434_wdt_start () ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int rc32434_wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(0, &rc32434_wdt_device.inuse))
  return -EBUSY;

 if (nowayout)
  __module_get(THIS_MODULE);

 rc32434_wdt_start();
 rc32434_wdt_ping();

 return nonseekable_open(inode, file);
}
