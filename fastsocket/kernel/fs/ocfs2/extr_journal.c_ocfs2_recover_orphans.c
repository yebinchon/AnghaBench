
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_inode_info {int ip_flags; int ip_lock; struct inode* ip_next_orphan; scalar_t__ ip_blkno; } ;
struct inode {int dummy; } ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_DELETED ;
 int OCFS2_INODE_MAYBE_ORPHANED ;
 int OCFS2_INODE_SKIP_DELETE ;
 int iput (struct inode*) ;
 int mlog (int ,char*,unsigned long long) ;
 int mlog_errno (int) ;
 int ocfs2_clear_recovering_orphan_dir (struct ocfs2_super*,int) ;
 int ocfs2_mark_recovering_orphan_dir (struct ocfs2_super*,int) ;
 int ocfs2_queue_orphans (struct ocfs2_super*,int,struct inode**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_recover_orphans(struct ocfs2_super *osb,
     int slot)
{
 int ret = 0;
 struct inode *inode = ((void*)0);
 struct inode *iter;
 struct ocfs2_inode_info *oi;

 mlog(0, "Recover inodes from orphan dir in slot %d\n", slot);

 ocfs2_mark_recovering_orphan_dir(osb, slot);
 ret = ocfs2_queue_orphans(osb, slot, &inode);
 ocfs2_clear_recovering_orphan_dir(osb, slot);



 if (ret)
  mlog_errno(ret);

 while (inode) {
  oi = OCFS2_I(inode);
  mlog(0, "iput orphan %llu\n", (unsigned long long)oi->ip_blkno);

  iter = oi->ip_next_orphan;

  spin_lock(&oi->ip_lock);




  oi->ip_flags &= ~(OCFS2_INODE_DELETED|OCFS2_INODE_SKIP_DELETE);



  oi->ip_flags |= OCFS2_INODE_MAYBE_ORPHANED;
  spin_unlock(&oi->ip_lock);

  iput(inode);

  inode = iter;
 }

 return ret;
}
