
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wm831x ;
 int wm831x_wdt_start (int ) ;
 int wm831x_wdt_users ;

__attribute__((used)) static int wm831x_wdt_open(struct inode *inode, struct file *file)
{
 int ret;

 if (!wm831x)
  return -ENODEV;

 if (test_and_set_bit(0, &wm831x_wdt_users))
  return -EBUSY;

 ret = wm831x_wdt_start(wm831x);
 if (ret != 0)
  return ret;

 return nonseekable_open(inode, file);
}
