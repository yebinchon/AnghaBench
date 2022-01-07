
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rblist {int entries; } ;
struct rb_node {int dummy; } ;


 struct rb_node* rb_first (int *) ;
 struct rb_node* rb_next (struct rb_node*) ;

struct rb_node *rblist__entry(const struct rblist *rblist, unsigned int idx)
{
 struct rb_node *node;

 for (node = rb_first(&rblist->entries); node; node = rb_next(node)) {
  if (!idx--)
   return node;
 }

 return ((void*)0);
}
