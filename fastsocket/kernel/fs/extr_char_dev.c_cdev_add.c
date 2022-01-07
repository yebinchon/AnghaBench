
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {unsigned int count; int dev; } ;
typedef int dev_t ;


 int cdev_map ;
 int exact_lock ;
 int exact_match ;
 int kobj_map (int ,int ,unsigned int,int *,int ,int ,struct cdev*) ;

int cdev_add(struct cdev *p, dev_t dev, unsigned count)
{
 p->dev = dev;
 p->count = count;
 return kobj_map(cdev_map, dev, count, ((void*)0), exact_match, exact_lock, p);
}
