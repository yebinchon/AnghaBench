
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct device {int dummy; } ;


 int __uwb_rc_get (struct uwb_rc*) ;
 struct device* class_find_device (int *,int *,struct uwb_rc*,int ) ;
 struct uwb_rc* dev_get_drvdata (struct device*) ;
 int find_rc_try_get ;
 int uwb_rc_class ;

struct uwb_rc *__uwb_rc_try_get(struct uwb_rc *target_rc)
{
 struct device *dev;
 struct uwb_rc *rc = ((void*)0);

 dev = class_find_device(&uwb_rc_class, ((void*)0), target_rc,
    find_rc_try_get);
 if (dev) {
  rc = dev_get_drvdata(dev);
  __uwb_rc_get(rc);
 }
 return rc;
}
