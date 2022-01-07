
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int lock; int status; TYPE_1__* ops; int dev; } ;
struct TYPE_2__ {int (* stop ) (struct watchdog_device*) ;} ;


 int EBUSY ;
 int ENODEV ;
 int WDOG_ACTIVE ;
 int WDOG_NO_WAY_OUT ;
 int WDOG_UNREGISTERED ;
 int clear_bit (int ,int *) ;
 int dev_info (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct watchdog_device*) ;
 scalar_t__ test_bit (int ,int *) ;
 int watchdog_active (struct watchdog_device*) ;

__attribute__((used)) static int watchdog_stop(struct watchdog_device *wddev)
{
 int err = 0;

 mutex_lock(&wddev->lock);

 if (test_bit(WDOG_UNREGISTERED, &wddev->status)) {
  err = -ENODEV;
  goto out_stop;
 }

 if (!watchdog_active(wddev))
  goto out_stop;

 if (test_bit(WDOG_NO_WAY_OUT, &wddev->status)) {
  dev_info(wddev->dev, "nowayout prevents watchdog being stopped!\n");
  err = -EBUSY;
  goto out_stop;
 }

 err = wddev->ops->stop(wddev);
 if (err == 0)
  clear_bit(WDOG_ACTIVE, &wddev->status);

out_stop:
 mutex_unlock(&wddev->lock);
 return err;
}
