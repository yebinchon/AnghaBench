
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct cdev {struct kobject kobj; } ;
typedef int dev_t ;



__attribute__((used)) static struct kobject *exact_match(dev_t dev, int *part, void *data)
{
 struct cdev *p = data;
 return &p->kobj;
}
