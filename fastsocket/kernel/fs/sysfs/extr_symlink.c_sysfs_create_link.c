
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int sysfs_do_create_link (struct kobject*,struct kobject*,char const*,int) ;

int sysfs_create_link(struct kobject *kobj, struct kobject *target,
        const char *name)
{
 return sysfs_do_create_link(kobj, target, name, 1);
}
