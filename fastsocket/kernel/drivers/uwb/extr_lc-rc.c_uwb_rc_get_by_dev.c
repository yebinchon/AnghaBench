
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct uwb_dev_addr {int dummy; } ;
struct device {int dummy; } ;


 struct device* class_find_device (int *,int *,void*,int ) ;
 struct uwb_rc* dev_get_drvdata (struct device*) ;
 int find_rc_dev ;
 int uwb_rc_class ;

struct uwb_rc *uwb_rc_get_by_dev(const struct uwb_dev_addr *addr)
{
 struct device *dev;
 struct uwb_rc *rc = ((void*)0);

 dev = class_find_device(&uwb_rc_class, ((void*)0), (void *)addr,
    find_rc_dev);
 if (dev)
  rc = dev_get_drvdata(dev);

 return rc;
}
