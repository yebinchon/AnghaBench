
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int lock; TYPE_1__* ops; int status; } ;
struct TYPE_2__ {int (* ioctl ) (struct watchdog_device*,unsigned int,unsigned long) ;} ;


 int ENODEV ;
 int ENOIOCTLCMD ;
 int WDOG_UNREGISTERED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct watchdog_device*,unsigned int,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int watchdog_ioctl_op(struct watchdog_device *wddev, unsigned int cmd,
       unsigned long arg)
{
 int err;

 if (!wddev->ops->ioctl)
  return -ENOIOCTLCMD;

 mutex_lock(&wddev->lock);

 if (test_bit(WDOG_UNREGISTERED, &wddev->status)) {
  err = -ENODEV;
  goto out_ioctl;
 }

 err = wddev->ops->ioctl(wddev, cmd, arg);

out_ioctl:
 mutex_unlock(&wddev->lock);
 return err;
}
