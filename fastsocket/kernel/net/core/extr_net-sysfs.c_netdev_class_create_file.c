
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_attribute {int dummy; } ;


 int class_create_file (int *,struct class_attribute*) ;
 int net_class ;

int netdev_class_create_file(struct class_attribute *class_attr)
{
 return class_create_file(&net_class, class_attr);
}
