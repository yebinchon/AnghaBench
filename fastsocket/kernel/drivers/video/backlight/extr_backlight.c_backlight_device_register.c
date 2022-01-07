
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct device {int dummy; } ;
struct backlight_ops {int dummy; } ;
struct TYPE_5__ {int release; struct device* parent; int class; } ;
struct backlight_device {struct backlight_ops* ops; TYPE_1__ dev; int ops_lock; int update_lock; } ;


 int ENOMEM ;
 struct backlight_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int backlight_class ;
 int backlight_register_fb (struct backlight_device*) ;
 int bl_device_release ;
 int dev_set_drvdata (TYPE_1__*,void*) ;
 int dev_set_name (TYPE_1__*,char const*) ;
 int device_register (TYPE_1__*) ;
 int device_unregister (TYPE_1__*) ;
 int kfree (struct backlight_device*) ;
 struct backlight_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct backlight_device* pmac_backlight ;
 int pmac_backlight_mutex ;
 int pr_debug (char*,char const*) ;

struct backlight_device *backlight_device_register(const char *name,
  struct device *parent, void *devdata, struct backlight_ops *ops)
{
 struct backlight_device *new_bd;
 int rc;

 pr_debug("backlight_device_register: name=%s\n", name);

 new_bd = kzalloc(sizeof(struct backlight_device), GFP_KERNEL);
 if (!new_bd)
  return ERR_PTR(-ENOMEM);

 mutex_init(&new_bd->update_lock);
 mutex_init(&new_bd->ops_lock);

 new_bd->dev.class = backlight_class;
 new_bd->dev.parent = parent;
 new_bd->dev.release = bl_device_release;
 dev_set_name(&new_bd->dev, name);
 dev_set_drvdata(&new_bd->dev, devdata);

 rc = device_register(&new_bd->dev);
 if (rc) {
  kfree(new_bd);
  return ERR_PTR(rc);
 }

 rc = backlight_register_fb(new_bd);
 if (rc) {
  device_unregister(&new_bd->dev);
  return ERR_PTR(rc);
 }

 new_bd->ops = ops;
 return new_bd;
}
