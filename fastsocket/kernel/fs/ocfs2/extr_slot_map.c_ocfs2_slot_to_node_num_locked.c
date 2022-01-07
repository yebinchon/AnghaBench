
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int max_slots; int osb_lock; struct ocfs2_slot_info* slot_info; } ;
struct ocfs2_slot_info {TYPE_1__* si_slots; } ;
struct TYPE_2__ {unsigned int sl_node_num; int sl_valid; } ;


 int BUG_ON (int) ;
 int ENOENT ;
 int assert_spin_locked (int *) ;

int ocfs2_slot_to_node_num_locked(struct ocfs2_super *osb, int slot_num,
      unsigned int *node_num)
{
 struct ocfs2_slot_info *si = osb->slot_info;

 assert_spin_locked(&osb->osb_lock);

 BUG_ON(slot_num < 0);
 BUG_ON(slot_num > osb->max_slots);

 if (!si->si_slots[slot_num].sl_valid)
  return -ENOENT;

 *node_num = si->si_slots[slot_num].sl_node_num;
 return 0;
}
