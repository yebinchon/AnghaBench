
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rb_parent_color; } ;
struct netfs_trans_dst {TYPE_1__ state_entry; } ;
struct netfs_state {int trans_root; } ;


 int rb_erase (TYPE_1__*,int *) ;

int netfs_trans_remove_nolock(struct netfs_trans_dst *dst, struct netfs_state *st)
{
 if (dst && dst->state_entry.rb_parent_color) {
  rb_erase(&dst->state_entry, &st->trans_root);
  dst->state_entry.rb_parent_color = 0;
  return 1;
 }
 return 0;
}
