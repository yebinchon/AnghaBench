
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rblist {int (* node_delete ) (struct rblist*,struct rb_node*) ;int nr_entries; int entries; } ;
struct rb_node {int dummy; } ;


 int rb_erase (struct rb_node*,int *) ;
 int stub1 (struct rblist*,struct rb_node*) ;

void rblist__remove_node(struct rblist *rblist, struct rb_node *rb_node)
{
 rb_erase(rb_node, &rblist->entries);
 --rblist->nr_entries;
 rblist->node_delete(rblist, rb_node);
}
