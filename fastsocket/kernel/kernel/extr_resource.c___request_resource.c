
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; scalar_t__ end; struct resource* sibling; struct resource* parent; struct resource* child; } ;
typedef scalar_t__ resource_size_t ;



__attribute__((used)) static struct resource * __request_resource(struct resource *root, struct resource *new)
{
 resource_size_t start = new->start;
 resource_size_t end = new->end;
 struct resource *tmp, **p;

 if (end < start)
  return root;
 if (start < root->start)
  return root;
 if (end > root->end)
  return root;
 p = &root->child;
 for (;;) {
  tmp = *p;
  if (!tmp || tmp->start > end) {
   new->sibling = tmp;
   *p = new;
   new->parent = root;
   return ((void*)0);
  }
  p = &tmp->sibling;
  if (tmp->end < start)
   continue;
  return tmp;
 }
}
