
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int sd; } ;
struct attribute {int dummy; } ;


 int BUG_ON (int) ;
 int SYSFS_KOBJ_ATTR ;
 int sysfs_add_file (int ,struct attribute const*,int ) ;

int sysfs_create_file(struct kobject * kobj, const struct attribute * attr)
{
 BUG_ON(!kobj || !kobj->sd || !attr);

 return sysfs_add_file(kobj->sd, attr, SYSFS_KOBJ_ATTR);

}
