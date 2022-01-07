
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_lock; int * osb_orphan_wipes; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_orphan_recovery_can_continue(struct ocfs2_super *osb,
           int slot)
{
 int ret;

 spin_lock(&osb->osb_lock);
 ret = !osb->osb_orphan_wipes[slot];
 spin_unlock(&osb->osb_lock);
 return ret;
}
