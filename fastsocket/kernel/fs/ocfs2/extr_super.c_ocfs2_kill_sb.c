
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_super {int dentry_lock_work; int vol_state; } ;


 int OCFS2_OSB_DROP_DENTRY_LOCK_IMMED ;
 struct ocfs2_super* OCFS2_SB (struct super_block*) ;
 scalar_t__ VOLUME_DISABLED ;
 scalar_t__ atomic_read (int *) ;
 int cancel_work_sync (int *) ;
 int dentry_list_lock ;
 int kill_block_super (struct super_block*) ;
 int ocfs2_set_osb_flag (struct ocfs2_super*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocfs2_kill_sb(struct super_block *sb)
{
 struct ocfs2_super *osb = OCFS2_SB(sb);


 if (!osb || atomic_read(&osb->vol_state) == VOLUME_DISABLED)
  goto out;


 spin_lock(&dentry_list_lock);
 ocfs2_set_osb_flag(osb, OCFS2_OSB_DROP_DENTRY_LOCK_IMMED);
 spin_unlock(&dentry_list_lock);

 cancel_work_sync(&osb->dentry_lock_work);
out:
 kill_block_super(sb);
}
