
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct watchdog_device {scalar_t__ min_timeout; scalar_t__ max_timeout; int id; int dev; int parent; TYPE_2__ cdev; int lock; TYPE_1__* ops; int * info; } ;
struct TYPE_3__ {int * stop; int * start; } ;


 int EBUSY ;
 int EINVAL ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_DOGS ;
 int PTR_ERR (int ) ;
 int device_create (int ,int ,int,int *,char*,int) ;
 int ida_simple_get (int *,int,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int mutex_init (int *) ;
 int pr_info (char*) ;
 int watchdog_class ;
 int watchdog_dev_register (struct watchdog_device*) ;
 int watchdog_dev_unregister (struct watchdog_device*) ;
 int watchdog_ida ;

int watchdog_register_device(struct watchdog_device *wdd)
{
 int ret, id, devno;

 if (wdd == ((void*)0) || wdd->info == ((void*)0) || wdd->ops == ((void*)0))
  return -EINVAL;


 if (wdd->ops->start == ((void*)0) || wdd->ops->stop == ((void*)0))
  return -EINVAL;





 if (wdd->min_timeout > wdd->max_timeout) {
  pr_info("Invalid min and max timeout values, resetting to 0!\n");
  wdd->min_timeout = 0;
  wdd->max_timeout = 0;
 }







 mutex_init(&wdd->lock);
 id = ida_simple_get(&watchdog_ida, 0, MAX_DOGS, GFP_KERNEL);
 if (id < 0)
  return id;
 wdd->id = id;

 ret = watchdog_dev_register(wdd);
 if (ret) {
  ida_simple_remove(&watchdog_ida, id);
  if (!(id == 0 && ret == -EBUSY))
   return ret;


  id = ida_simple_get(&watchdog_ida, 1, MAX_DOGS, GFP_KERNEL);
  if (id < 0)
   return id;
  wdd->id = id;

  ret = watchdog_dev_register(wdd);
  if (ret) {
   ida_simple_remove(&watchdog_ida, id);
   return ret;
  }
 }

 devno = wdd->cdev.dev;
 wdd->dev = device_create(watchdog_class, wdd->parent, devno,
     ((void*)0), "watchdog%d", wdd->id);
 if (IS_ERR(wdd->dev)) {
  watchdog_dev_unregister(wdd);
  ida_simple_remove(&watchdog_ida, id);
  ret = PTR_ERR(wdd->dev);
  return ret;
 }

 return 0;
}
