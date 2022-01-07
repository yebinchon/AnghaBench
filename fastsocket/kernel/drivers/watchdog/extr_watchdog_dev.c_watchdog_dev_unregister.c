
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {scalar_t__ id; int cdev; int lock; int status; } ;


 int WDOG_UNREGISTERED ;
 int cdev_del (int *) ;
 int misc_deregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * old_wdd ;
 int set_bit (int ,int *) ;
 int watchdog_miscdev ;

int watchdog_dev_unregister(struct watchdog_device *watchdog)
{
 mutex_lock(&watchdog->lock);
 set_bit(WDOG_UNREGISTERED, &watchdog->status);
 mutex_unlock(&watchdog->lock);

 cdev_del(&watchdog->cdev);
 if (watchdog->id == 0) {
  misc_deregister(&watchdog_miscdev);
  old_wdd = ((void*)0);
 }
 return 0;
}
