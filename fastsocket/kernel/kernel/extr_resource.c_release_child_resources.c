
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 int __release_child_resources (struct resource*) ;
 int resource_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void release_child_resources(struct resource *r)
{
 write_lock(&resource_lock);
 __release_child_resources(r);
 write_unlock(&resource_lock);
}
