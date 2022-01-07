
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef size_t ssize_t ;


 int foo ;
 int sscanf (char const*,char*,int *) ;

__attribute__((used)) static ssize_t foo_store(struct kobject *kobj, struct kobj_attribute *attr,
    const char *buf, size_t count)
{
 sscanf(buf, "%du", &foo);
 return count;
}
