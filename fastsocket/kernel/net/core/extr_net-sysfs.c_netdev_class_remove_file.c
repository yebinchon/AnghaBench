
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_attribute {int dummy; } ;


 int class_remove_file (int *,struct class_attribute*) ;
 int net_class ;

void netdev_class_remove_file(struct class_attribute *class_attr)
{
 class_remove_file(&net_class, class_attr);
}
