
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct foo_obj {int foo; } ;
struct foo_attribute {int dummy; } ;
typedef size_t ssize_t ;


 int sscanf (char const*,char*,int *) ;

__attribute__((used)) static ssize_t foo_store(struct foo_obj *foo_obj, struct foo_attribute *attr,
    const char *buf, size_t count)
{
 sscanf(buf, "%du", &foo_obj->foo);
 return count;
}
