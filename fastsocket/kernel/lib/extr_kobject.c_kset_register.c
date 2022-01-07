
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kset {int kobj; } ;


 int EINVAL ;
 int KOBJ_ADD ;
 int kobject_add_internal (int *) ;
 int kobject_uevent (int *,int ) ;
 int kset_init (struct kset*) ;

int kset_register(struct kset *k)
{
 int err;

 if (!k)
  return -EINVAL;

 kset_init(k);
 err = kobject_add_internal(&k->kobj);
 if (err)
  return err;
 kobject_uevent(&k->kobj, KOBJ_ADD);
 return 0;
}
