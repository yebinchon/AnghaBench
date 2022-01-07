
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int lock; TYPE_1__* ops; int status; } ;
struct TYPE_2__ {unsigned int (* get_timeleft ) (struct watchdog_device*) ;} ;


 int ENODEV ;
 int EOPNOTSUPP ;
 int WDOG_UNREGISTERED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int stub1 (struct watchdog_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int watchdog_get_timeleft(struct watchdog_device *wddev,
       unsigned int *timeleft)
{
 int err = 0;

 *timeleft = 0;
 if (!wddev->ops->get_timeleft)
  return -EOPNOTSUPP;

 mutex_lock(&wddev->lock);

 if (test_bit(WDOG_UNREGISTERED, &wddev->status)) {
  err = -ENODEV;
  goto out_timeleft;
 }

 *timeleft = wddev->ops->get_timeleft(wddev);

out_timeleft:
 mutex_unlock(&wddev->lock);
 return err;
}
