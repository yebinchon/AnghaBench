
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int rblist; } ;
struct str_node {int rb_node; } ;


 int rblist__remove_node (int *,int *) ;

void strlist__remove(struct strlist *slist, struct str_node *snode)
{
 rblist__remove_node(&slist->rblist, &snode->rb_node);
}
