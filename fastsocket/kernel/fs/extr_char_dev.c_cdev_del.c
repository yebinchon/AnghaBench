
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int kobj; int count; int dev; } ;


 int cdev_unmap (int ,int ) ;
 int kobject_put (int *) ;

void cdev_del(struct cdev *p)
{
 cdev_unmap(p->dev, p->count);
 kobject_put(&p->kobj);
}
