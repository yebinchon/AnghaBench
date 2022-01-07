
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int kref; } ;


 int kref_get (int *) ;

struct kobject *kobject_get(struct kobject *kobj)
{
 if (kobj)
  kref_get(&kobj->kref);
 return kobj;
}
