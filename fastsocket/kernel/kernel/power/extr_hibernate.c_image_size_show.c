
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int image_size ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t image_size_show(struct kobject *kobj, struct kobj_attribute *attr,
          char *buf)
{
 return sprintf(buf, "%lu\n", image_size);
}
