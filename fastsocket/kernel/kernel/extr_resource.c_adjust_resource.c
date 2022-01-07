
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; scalar_t__ end; struct resource* sibling; struct resource* child; struct resource* parent; } ;
typedef scalar_t__ resource_size_t ;


 int EBUSY ;
 int resource_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int adjust_resource(struct resource *res, resource_size_t start, resource_size_t size)
{
 struct resource *tmp, *parent = res->parent;
 resource_size_t end = start + size - 1;
 int result = -EBUSY;

 write_lock(&resource_lock);

 if ((start < parent->start) || (end > parent->end))
  goto out;

 for (tmp = res->child; tmp; tmp = tmp->sibling) {
  if ((tmp->start < start) || (tmp->end > end))
   goto out;
 }

 if (res->sibling && (res->sibling->start <= end))
  goto out;

 tmp = parent->child;
 if (tmp != res) {
  while (tmp->sibling != res)
   tmp = tmp->sibling;
  if (start <= tmp->end)
   goto out;
 }

 res->start = start;
 res->end = end;
 result = 0;

 out:
 write_unlock(&resource_lock);
 return result;
}
