
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct foo_obj {int baz; int bar; } ;
struct TYPE_2__ {int name; } ;
struct foo_attribute {TYPE_1__ attr; } ;
typedef size_t ssize_t ;


 int sscanf (char const*,char*,int*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static ssize_t b_store(struct foo_obj *foo_obj, struct foo_attribute *attr,
         const char *buf, size_t count)
{
 int var;

 sscanf(buf, "%du", &var);
 if (strcmp(attr->attr.name, "baz") == 0)
  foo_obj->baz = var;
 else
  foo_obj->bar = var;
 return count;
}
