
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;
typedef int dev_t ;


 scalar_t__ cdev_get (struct cdev*) ;

__attribute__((used)) static int exact_lock(dev_t dev, void *data)
{
 struct cdev *p = data;
 return cdev_get(p) ? 0 : -1;
}
