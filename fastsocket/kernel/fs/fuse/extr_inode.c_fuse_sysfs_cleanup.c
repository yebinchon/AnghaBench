
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int connections_kobj ;
 int fuse_kobj ;
 int kobject_put (int ) ;

__attribute__((used)) static void fuse_sysfs_cleanup(void)
{
 kobject_put(connections_kobj);
 kobject_put(fuse_kobj);
}
