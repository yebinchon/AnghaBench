
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int nr_hugepages_store_common (int,struct kobject*,struct kobj_attribute*,char const*,size_t) ;

__attribute__((used)) static ssize_t nr_hugepages_store(struct kobject *kobj,
        struct kobj_attribute *attr, const char *buf, size_t len)
{
 return nr_hugepages_store_common(0, kobj, attr, buf, len);
}
