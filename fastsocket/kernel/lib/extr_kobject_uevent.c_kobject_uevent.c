
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
typedef enum kobject_action { ____Placeholder_kobject_action } kobject_action ;


 int kobject_uevent_env (struct kobject*,int,int *) ;

int kobject_uevent(struct kobject *kobj, enum kobject_action action)
{
 return kobject_uevent_env(kobj, action, ((void*)0));
}
