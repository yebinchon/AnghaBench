
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct rb_node* rb_node; } ;
struct rblist {int (* node_cmp ) (struct rb_node*,void const*) ;TYPE_1__ entries; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;


 int stub1 (struct rb_node*,void const*) ;

struct rb_node *rblist__find(struct rblist *rblist, const void *entry)
{
 struct rb_node **p = &rblist->entries.rb_node;
 struct rb_node *parent = ((void*)0);

 while (*p != ((void*)0)) {
  int rc;

  parent = *p;

  rc = rblist->node_cmp(parent, entry);
  if (rc > 0)
   p = &(*p)->rb_left;
  else if (rc < 0)
   p = &(*p)->rb_right;
  else
   return parent;
 }

 return ((void*)0);
}
