
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;
typedef size_t ssize_t ;


 int bar ;
 int baz ;
 int sscanf (char const*,char*,int*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static ssize_t b_store(struct kobject *kobj, struct kobj_attribute *attr,
         const char *buf, size_t count)
{
 int var;

 sscanf(buf, "%du", &var);
 if (strcmp(attr->attr.name, "baz") == 0)
  baz = var;
 else
  bar = var;
 return count;
}
