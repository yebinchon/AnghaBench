
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int otherend; int otherend_watch; } ;


 int otherend_changed ;
 int xenbus_watch_pathfmt (struct xenbus_device*,int *,int ,char*,int ,char*) ;

__attribute__((used)) static int watch_otherend(struct xenbus_device *dev)
{
 return xenbus_watch_pathfmt(dev, &dev->otherend_watch, otherend_changed,
        "%s/%s", dev->otherend, "state");
}
