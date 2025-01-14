
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct watchdog_device {unsigned int max_timeout; unsigned int min_timeout; int lock; TYPE_1__* ops; int status; TYPE_2__* info; } ;
struct TYPE_4__ {int options; } ;
struct TYPE_3__ {int (* set_timeout ) (struct watchdog_device*,unsigned int) ;} ;


 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int WDIOF_SETTIMEOUT ;
 int WDOG_UNREGISTERED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct watchdog_device*,unsigned int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int watchdog_set_timeout(struct watchdog_device *wddev,
       unsigned int timeout)
{
 int err;

 if ((wddev->ops->set_timeout == ((void*)0)) ||
     !(wddev->info->options & WDIOF_SETTIMEOUT))
  return -EOPNOTSUPP;

 if ((wddev->max_timeout != 0) &&
     (timeout < wddev->min_timeout || timeout > wddev->max_timeout))
  return -EINVAL;

 mutex_lock(&wddev->lock);

 if (test_bit(WDOG_UNREGISTERED, &wddev->status)) {
  err = -ENODEV;
  goto out_timeout;
 }

 err = wddev->ops->set_timeout(wddev, timeout);

out_timeout:
 mutex_unlock(&wddev->lock);
 return err;
}
