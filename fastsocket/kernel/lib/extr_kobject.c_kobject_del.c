
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int * parent; scalar_t__ state_in_sysfs; } ;


 int kobj_kset_leave (struct kobject*) ;
 int kobject_put (int *) ;
 int sysfs_remove_dir (struct kobject*) ;

void kobject_del(struct kobject *kobj)
{
 if (!kobj)
  return;

 sysfs_remove_dir(kobj);
 kobj->state_in_sysfs = 0;
 kobj_kset_leave(kobj);
 kobject_put(kobj->parent);
 kobj->parent = ((void*)0);
}
