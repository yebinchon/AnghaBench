
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int sd; } ;
struct TYPE_2__ {int name; } ;
struct bin_attribute {TYPE_1__ attr; } ;


 int sysfs_hash_and_remove (int ,int ) ;

void sysfs_remove_bin_file(struct kobject * kobj, struct bin_attribute * attr)
{
 sysfs_hash_and_remove(kobj->sd, attr->attr.name);
}
