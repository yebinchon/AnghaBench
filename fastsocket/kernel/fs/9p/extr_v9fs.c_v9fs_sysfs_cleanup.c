
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kobject_put (int ) ;
 int sysfs_remove_group (int ,int *) ;
 int v9fs_attr_group ;
 int v9fs_kobj ;

__attribute__((used)) static void v9fs_sysfs_cleanup(void)
{
 sysfs_remove_group(v9fs_kobj, &v9fs_attr_group);
 kobject_put(v9fs_kobj);
}
