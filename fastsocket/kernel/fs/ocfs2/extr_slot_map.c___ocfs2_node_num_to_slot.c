
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_slot_info {int si_num_slots; TYPE_1__* si_slots; } ;
struct TYPE_2__ {unsigned int sl_node_num; scalar_t__ sl_valid; } ;


 int ENOENT ;

__attribute__((used)) static int __ocfs2_node_num_to_slot(struct ocfs2_slot_info *si,
        unsigned int node_num)
{
 int i, ret = -ENOENT;

 for(i = 0; i < si->si_num_slots; i++) {
  if (si->si_slots[i].sl_valid &&
      (node_num == si->si_slots[i].sl_node_num)) {
   ret = i;
   break;
  }
 }

 return ret;
}
