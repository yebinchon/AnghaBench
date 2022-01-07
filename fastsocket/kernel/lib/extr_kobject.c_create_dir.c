
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 scalar_t__ kobject_name (struct kobject*) ;
 int populate_dir (struct kobject*) ;
 int sysfs_create_dir (struct kobject*) ;
 int sysfs_remove_dir (struct kobject*) ;

__attribute__((used)) static int create_dir(struct kobject *kobj)
{
 int error = 0;
 if (kobject_name(kobj)) {
  error = sysfs_create_dir(kobj);
  if (!error) {
   error = populate_dir(kobj);
   if (error)
    sysfs_remove_dir(kobj);
  }
 }
 return error;
}
