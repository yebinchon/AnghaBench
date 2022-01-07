
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int sd; } ;
struct attribute {int name; } ;


 int sysfs_hash_and_remove (int ,int ) ;

void sysfs_remove_file(struct kobject * kobj, const struct attribute * attr)
{
 sysfs_hash_and_remove(kobj->sd, attr->name);
}
