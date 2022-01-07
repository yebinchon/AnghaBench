
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; scalar_t__ end; int name; scalar_t__ parent; } ;


 struct resource* __insert_resource (struct resource*,struct resource*) ;
 int printk (char*,int ,int ) ;
 int resource_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void insert_resource_expand_to_fit(struct resource *root, struct resource *new)
{
 if (new->parent)
  return;

 write_lock(&resource_lock);
 for (;;) {
  struct resource *conflict;

  conflict = __insert_resource(root, new);
  if (!conflict)
   break;
  if (conflict == root)
   break;


  if (conflict->start < new->start)
   new->start = conflict->start;
  if (conflict->end > new->end)
   new->end = conflict->end;

  printk("Expanded resource %s due to conflict with %s\n", new->name, conflict->name);
 }
 write_unlock(&resource_lock);
}
