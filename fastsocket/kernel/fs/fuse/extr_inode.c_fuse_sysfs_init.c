
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 void* connections_kobj ;
 void* fs_kobj ;
 void* fuse_kobj ;
 void* kobject_create_and_add (char*,void*) ;
 int kobject_put (void*) ;

__attribute__((used)) static int fuse_sysfs_init(void)
{
 int err;

 fuse_kobj = kobject_create_and_add("fuse", fs_kobj);
 if (!fuse_kobj) {
  err = -ENOMEM;
  goto out_err;
 }

 connections_kobj = kobject_create_and_add("connections", fuse_kobj);
 if (!connections_kobj) {
  err = -ENOMEM;
  goto out_fuse_unregister;
 }

 return 0;

 out_fuse_unregister:
 kobject_put(fuse_kobj);
 out_err:
 return err;
}
