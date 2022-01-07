
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display_driver {int (* probe ) (struct display_device*,void*) ;} ;
struct display_device {int idx; int lock; struct display_driver* driver; struct device* parent; int dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct display_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IS_ERR (int ) ;
 int MKDEV (int ,int ) ;
 int allocated_dsp ;
 int allocated_dsp_lock ;
 int device_create (int ,struct device*,int ,struct display_device*,char*,int ) ;
 int display_class ;
 int idr_get_new (int *,struct display_device*,int *) ;
 int idr_pre_get (int *,int ) ;
 int idr_remove (int *,int ) ;
 int kfree (struct display_device*) ;
 struct display_device* kzalloc (int,int ) ;
 scalar_t__ likely (struct display_device*) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct display_device*,void*) ;
 scalar_t__ unlikely (int) ;

struct display_device *display_device_register(struct display_driver *driver,
      struct device *parent, void *devdata)
{
 struct display_device *new_dev = ((void*)0);
 int ret = -EINVAL;

 if (unlikely(!driver))
  return ERR_PTR(ret);

 mutex_lock(&allocated_dsp_lock);
 ret = idr_pre_get(&allocated_dsp, GFP_KERNEL);
 mutex_unlock(&allocated_dsp_lock);
 if (!ret)
  return ERR_PTR(ret);

 new_dev = kzalloc(sizeof(struct display_device), GFP_KERNEL);
 if (likely(new_dev) && unlikely(driver->probe(new_dev, devdata))) {

  mutex_lock(&allocated_dsp_lock);
  ret = idr_get_new(&allocated_dsp, new_dev, &new_dev->idx);
  mutex_unlock(&allocated_dsp_lock);

  if (!ret) {
   new_dev->dev = device_create(display_class, parent,
           MKDEV(0, 0), new_dev,
           "display%d", new_dev->idx);
   if (!IS_ERR(new_dev->dev)) {
    new_dev->parent = parent;
    new_dev->driver = driver;
    mutex_init(&new_dev->lock);
    return new_dev;
   }
   mutex_lock(&allocated_dsp_lock);
   idr_remove(&allocated_dsp, new_dev->idx);
   mutex_unlock(&allocated_dsp_lock);
   ret = -EINVAL;
  }
 }
 kfree(new_dev);
 return ERR_PTR(ret);
}
