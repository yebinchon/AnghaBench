
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_register (int *) ;
 int net_class ;

int netdev_kobject_init(void)
{
 return class_register(&net_class);
}
