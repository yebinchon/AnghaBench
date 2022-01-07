
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_lock; int osb_wipe_event; scalar_t__* osb_orphan_wipes; int osb_recovering_orphan_dirs; } ;


 int ocfs2_node_map_set_bit (struct ocfs2_super*,int *,int) ;
 int ocfs2_orphan_recovery_can_continue (struct ocfs2_super*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static void ocfs2_mark_recovering_orphan_dir(struct ocfs2_super *osb,
          int slot)
{
 spin_lock(&osb->osb_lock);


 ocfs2_node_map_set_bit(osb, &osb->osb_recovering_orphan_dirs, slot);
 while (osb->osb_orphan_wipes[slot]) {



  spin_unlock(&osb->osb_lock);
  wait_event_interruptible(osb->osb_wipe_event,
      ocfs2_orphan_recovery_can_continue(osb, slot));
  spin_lock(&osb->osb_lock);
 }
 spin_unlock(&osb->osb_lock);
}
