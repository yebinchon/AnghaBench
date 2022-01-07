
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct kobject {int dummy; } ;
struct cdev {int kobj; struct module* owner; } ;


 struct kobject* kobject_get (int *) ;
 int module_put (struct module*) ;
 int try_module_get (struct module*) ;

__attribute__((used)) static struct kobject *cdev_get(struct cdev *p)
{
 struct module *owner = p->owner;
 struct kobject *kobj;

 if (owner && !try_module_get(owner))
  return ((void*)0);
 kobj = kobject_get(&p->kobj);
 if (!kobj)
  module_put(owner);
 return kobj;
}
