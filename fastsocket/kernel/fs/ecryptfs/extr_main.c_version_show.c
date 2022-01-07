
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int ECRYPTFS_VERSIONING_MASK ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t version_show(struct kobject *kobj,
       struct kobj_attribute *attr, char *buff)
{
 return snprintf(buff, PAGE_SIZE, "%d\n", ECRYPTFS_VERSIONING_MASK);
}
