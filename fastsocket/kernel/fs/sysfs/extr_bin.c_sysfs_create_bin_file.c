
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int sd; } ;
struct bin_attribute {int attr; } ;


 int BUG_ON (int) ;
 int SYSFS_KOBJ_BIN_ATTR ;
 int sysfs_add_file (int ,int *,int ) ;

int sysfs_create_bin_file(struct kobject * kobj, struct bin_attribute * attr)
{
 BUG_ON(!kobj || !kobj->sd || !attr);

 return sysfs_add_file(kobj->sd, &attr->attr, SYSFS_KOBJ_BIN_ATTR);
}
