
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct cdev {int kobj; struct module* owner; } ;


 int kobject_put (int *) ;
 int module_put (struct module*) ;

void cdev_put(struct cdev *p)
{
 if (p) {
  struct module *owner = p->owner;
  kobject_put(&p->kobj);
  module_put(owner);
 }
}
