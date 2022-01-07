
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device {TYPE_1__* node; } ;
struct soundbus_dev {int modalias; struct of_device ofdev; } ;
struct kobj_uevent_env {int buflen; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int name; int type; } ;


 int ENODEV ;
 int add_uevent_var (struct kobj_uevent_env*,char*,int,...) ;
 char* of_get_property (TYPE_1__*,char*,int*) ;
 struct soundbus_dev* to_soundbus_device (struct device*) ;

__attribute__((used)) static int soundbus_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct soundbus_dev * soundbus_dev;
 struct of_device * of;
 const char *compat;
 int retval = 0;
 int cplen, seen = 0;

 if (!dev)
  return -ENODEV;

 soundbus_dev = to_soundbus_device(dev);
 if (!soundbus_dev)
  return -ENODEV;

 of = &soundbus_dev->ofdev;


 retval = add_uevent_var(env, "OF_NAME=%s", of->node->name);
 if (retval)
  return retval;

 retval = add_uevent_var(env, "OF_TYPE=%s", of->node->type);
 if (retval)
  return retval;





 compat = of_get_property(of->node, "compatible", &cplen);
 while (compat && cplen > 0) {
  int tmp = env->buflen;
  retval = add_uevent_var(env, "OF_COMPATIBLE_%d=%s", seen, compat);
  if (retval)
   return retval;
  compat += env->buflen - tmp;
  cplen -= env->buflen - tmp;
  seen += 1;
 }

 retval = add_uevent_var(env, "OF_COMPATIBLE_N=%d", seen);
 if (retval)
  return retval;
 retval = add_uevent_var(env, "MODALIAS=%s", soundbus_dev->modalias);

 return retval;
}
