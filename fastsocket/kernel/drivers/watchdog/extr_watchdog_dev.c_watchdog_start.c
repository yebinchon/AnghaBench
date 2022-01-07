
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int lock; int status; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* start ) (struct watchdog_device*) ;} ;


 int ENODEV ;
 int WDOG_ACTIVE ;
 int WDOG_UNREGISTERED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct watchdog_device*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ watchdog_active (struct watchdog_device*) ;

__attribute__((used)) static int watchdog_start(struct watchdog_device *wddev)
{
 int err = 0;

 mutex_lock(&wddev->lock);

 if (test_bit(WDOG_UNREGISTERED, &wddev->status)) {
  err = -ENODEV;
  goto out_start;
 }

 if (watchdog_active(wddev))
  goto out_start;

 err = wddev->ops->start(wddev);
 if (err == 0)
  set_bit(WDOG_ACTIVE, &wddev->status);

out_start:
 mutex_unlock(&wddev->lock);
 return err;
}
