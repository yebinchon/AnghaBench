
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int clear_bit (int ,int *) ;
 int dev_warn (int ,char*) ;
 TYPE_1__* wm831x ;
 scalar_t__ wm831x_wdt_expect_close ;
 int wm831x_wdt_kick (TYPE_1__*) ;
 int wm831x_wdt_stop (TYPE_1__*) ;
 int wm831x_wdt_users ;

__attribute__((used)) static int wm831x_wdt_release(struct inode *inode, struct file *file)
{
 if (wm831x_wdt_expect_close)
  wm831x_wdt_stop(wm831x);
 else {
  dev_warn(wm831x->dev, "Watchdog device closed uncleanly\n");
  wm831x_wdt_kick(wm831x);
 }

 clear_bit(0, &wm831x_wdt_users);

 return 0;
}
