
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_lock; struct ocfs2_slot_info* slot_info; } ;
struct ocfs2_slot_info {scalar_t__ si_blocks; int * si_bh; int si_inode; } ;


 int BUG_ON (int) ;
 int INODE_CACHE (int ) ;
 int OCFS2_BH_IGNORE_CACHE ;
 int mlog (int ,char*,scalar_t__) ;
 int ocfs2_read_blocks (int ,int,scalar_t__,int *,int ,int *) ;
 int ocfs2_update_slot_info (struct ocfs2_slot_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ocfs2_refresh_slot_info(struct ocfs2_super *osb)
{
 int ret;
 struct ocfs2_slot_info *si = osb->slot_info;

 if (si == ((void*)0))
  return 0;

 BUG_ON(si->si_blocks == 0);
 BUG_ON(si->si_bh == ((void*)0));

 mlog(0, "Refreshing slot map, reading %u block(s)\n",
      si->si_blocks);






 ret = ocfs2_read_blocks(INODE_CACHE(si->si_inode), -1, si->si_blocks,
    si->si_bh, OCFS2_BH_IGNORE_CACHE, ((void*)0));
 if (ret == 0) {
  spin_lock(&osb->osb_lock);
  ocfs2_update_slot_info(si);
  spin_unlock(&osb->osb_lock);
 }

 return ret;
}
