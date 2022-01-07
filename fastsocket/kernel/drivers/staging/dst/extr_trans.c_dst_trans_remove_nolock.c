
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rb_parent_color; } ;
struct dst_trans {TYPE_1__ trans_entry; struct dst_node* n; } ;
struct dst_node {int trans_root; } ;


 int rb_erase (TYPE_1__*,int *) ;

int dst_trans_remove_nolock(struct dst_trans *t)
{
 struct dst_node *n = t->n;

 if (t->trans_entry.rb_parent_color) {
  rb_erase(&t->trans_entry, &n->trans_root);
  t->trans_entry.rb_parent_color = 0;
 }
 return 0;
}
