
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ start; scalar_t__ end; scalar_t__ flags; int name; struct resource* sibling; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_2__ {struct resource* child; } ;


 int BUG_ON (int) ;
 TYPE_1__ iomem_resource ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int resource_lock ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int find_next_system_ram(struct resource *res, char *name)
{
 resource_size_t start, end;
 struct resource *p;

 BUG_ON(!res);

 start = res->start;
 end = res->end;
 BUG_ON(start >= end);

 read_lock(&resource_lock);
 for (p = iomem_resource.child; p ; p = p->sibling) {

  if (p->flags != res->flags)
   continue;
  if (name && strcmp(p->name, name))
   continue;
  if (p->start > end) {
   p = ((void*)0);
   break;
  }
  if ((p->end >= start) && (p->start < end))
   break;
 }
 read_unlock(&resource_lock);
 if (!p)
  return -1;

 if (res->start < p->start)
  res->start = p->start;
 if (res->end > p->end)
  res->end = p->end;
 return 0;
}
