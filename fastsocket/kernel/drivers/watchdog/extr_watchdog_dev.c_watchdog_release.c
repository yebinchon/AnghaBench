
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct watchdog_device {TYPE_2__* ops; int status; int lock; int dev; TYPE_1__* info; } ;
struct inode {int dummy; } ;
struct file {struct watchdog_device* private_data; } ;
struct TYPE_4__ {int (* unref ) (struct watchdog_device*) ;int owner; } ;
struct TYPE_3__ {int options; } ;


 int EBUSY ;
 int WDIOF_MAGICCLOSE ;
 int WDOG_ALLOW_RELEASE ;
 int WDOG_DEV_OPEN ;
 int WDOG_UNREGISTERED ;
 int clear_bit (int ,int *) ;
 int dev_crit (int ,char*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct watchdog_device*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int watchdog_ping (struct watchdog_device*) ;
 int watchdog_stop (struct watchdog_device*) ;

__attribute__((used)) static int watchdog_release(struct inode *inode, struct file *file)
{
 struct watchdog_device *wdd = file->private_data;
 int err = -EBUSY;






 if (test_and_clear_bit(WDOG_ALLOW_RELEASE, &wdd->status) ||
     !(wdd->info->options & WDIOF_MAGICCLOSE))
  err = watchdog_stop(wdd);


 if (err < 0) {
  mutex_lock(&wdd->lock);
  if (!test_bit(WDOG_UNREGISTERED, &wdd->status))
   dev_crit(wdd->dev, "watchdog did not stop!\n");
  mutex_unlock(&wdd->lock);
  watchdog_ping(wdd);
 }


 module_put(wdd->ops->owner);


 clear_bit(WDOG_DEV_OPEN, &wdd->status);


 if (wdd->ops->unref)
  wdd->ops->unref(wdd);

 return 0;
}
