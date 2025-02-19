
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; scalar_t__ end; struct resource* sibling; struct resource* child; struct resource* parent; } ;


 struct resource* __request_resource (struct resource*,struct resource*) ;

__attribute__((used)) static struct resource * __insert_resource(struct resource *parent, struct resource *new)
{
 struct resource *first, *next;

 for (;; parent = first) {
  first = __request_resource(parent, new);
  if (!first)
   return first;

  if (first == parent)
   return first;

  if ((first->start > new->start) || (first->end < new->end))
   break;
  if ((first->start == new->start) && (first->end == new->end))
   break;
 }

 for (next = first; ; next = next->sibling) {

  if (next->start < new->start || next->end > new->end)
   return next;
  if (!next->sibling)
   break;
  if (next->sibling->start > new->end)
   break;
 }

 new->parent = parent;
 new->sibling = next->sibling;
 new->child = first;

 next->sibling = ((void*)0);
 for (next = first; next; next = next->sibling)
  next->parent = new;

 if (parent->child == first) {
  parent->child = new;
 } else {
  next = parent->child;
  while (next->sibling != first)
   next = next->sibling;
  next->sibling = new;
 }
 return ((void*)0);
}
