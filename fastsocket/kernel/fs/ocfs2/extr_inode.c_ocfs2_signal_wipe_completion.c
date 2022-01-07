
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_wipe_event; int osb_lock; int * osb_orphan_wipes; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void ocfs2_signal_wipe_completion(struct ocfs2_super *osb,
      int slot)
{
 spin_lock(&osb->osb_lock);
 osb->osb_orphan_wipes[slot]--;
 spin_unlock(&osb->osb_lock);

 wake_up(&osb->osb_wipe_event);
}
