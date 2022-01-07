
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int GFP_KERNEL ;
 int dynamic_kobj_ktype ;
 int kobject_init (struct kobject*,int *) ;
 struct kobject* kzalloc (int,int ) ;

struct kobject *kobject_create(void)
{
 struct kobject *kobj;

 kobj = kzalloc(sizeof(*kobj), GFP_KERNEL);
 if (!kobj)
  return ((void*)0);

 kobject_init(kobj, &dynamic_kobj_ktype);
 return kobj;
}
