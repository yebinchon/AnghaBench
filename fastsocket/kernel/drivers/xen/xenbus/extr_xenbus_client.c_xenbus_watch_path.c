
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_watch {char const* node; void (* callback ) (struct xenbus_watch*,char const**,unsigned int) ;} ;
struct xenbus_device {int dummy; } ;


 int register_xenbus_watch (struct xenbus_watch*) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,char const*) ;

int xenbus_watch_path(struct xenbus_device *dev, const char *path,
        struct xenbus_watch *watch,
        void (*callback)(struct xenbus_watch *,
           const char **, unsigned int))
{
 int err;

 watch->node = path;
 watch->callback = callback;

 err = register_xenbus_watch(watch);

 if (err) {
  watch->node = ((void*)0);
  watch->callback = ((void*)0);
  xenbus_dev_fatal(dev, err, "adding watch on %s", path);
 }

 return err;
}
