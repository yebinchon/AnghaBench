
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int fs_kobj ;
 int kobject_create_and_add (char*,int ) ;
 int kobject_put (int ) ;
 scalar_t__ sysfs_create_group (int ,int *) ;
 int v9fs_attr_group ;
 int v9fs_kobj ;

__attribute__((used)) static int v9fs_sysfs_init(void)
{
 v9fs_kobj = kobject_create_and_add("9p", fs_kobj);
 if (!v9fs_kobj)
  return -ENOMEM;

 if (sysfs_create_group(v9fs_kobj, &v9fs_attr_group)) {
  kobject_put(v9fs_kobj);
  return -ENOMEM;
 }

 return 0;
}
