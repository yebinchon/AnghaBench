
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_inode_info {int ip_flags; scalar_t__ ip_blkno; int ip_lock; struct ocfs2_lock_res ip_inode_lockres; } ;
struct ocfs2_dinode {int i_generation; int i_flags; int i_dtime; } ;
struct inode {scalar_t__ i_generation; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int ENOENT ;
 int INODE_CACHE (struct inode*) ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_DELETED ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int OCFS2_VALID_FL ;
 int cpu_to_le32 (int ) ;
 unsigned long long le32_to_cpu (int) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long,...) ;
 int mlog_bug_on_msg (int,char*,unsigned long long,unsigned long long,unsigned long long) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_complete_lock_res_refresh (struct ocfs2_lock_res*,int) ;
 int ocfs2_extent_map_trunc (struct inode*,int ) ;
 scalar_t__ ocfs2_meta_lvb_is_trustable (struct inode*,struct ocfs2_lock_res*) ;
 int ocfs2_metadata_cache_purge (int ) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;
 int ocfs2_refresh_inode (struct inode*,struct ocfs2_dinode*) ;
 int ocfs2_refresh_inode_from_lvb (struct inode*) ;
 int ocfs2_should_refresh_lock_res (struct ocfs2_lock_res*) ;
 int ocfs2_track_lock_refresh (struct ocfs2_lock_res*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_inode_lock_update(struct inode *inode,
      struct buffer_head **bh)
{
 int status = 0;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_lock_res *lockres = &oi->ip_inode_lockres;
 struct ocfs2_dinode *fe;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 mlog_entry_void();

 if (ocfs2_mount_local(osb))
  goto bail;

 spin_lock(&oi->ip_lock);
 if (oi->ip_flags & OCFS2_INODE_DELETED) {
  mlog(0, "Orphaned inode %llu was deleted while we "
       "were waiting on a lock. ip_flags = 0x%x\n",
       (unsigned long long)oi->ip_blkno, oi->ip_flags);
  spin_unlock(&oi->ip_lock);
  status = -ENOENT;
  goto bail;
 }
 spin_unlock(&oi->ip_lock);

 if (!ocfs2_should_refresh_lock_res(lockres))
  goto bail;



 ocfs2_metadata_cache_purge(INODE_CACHE(inode));

 ocfs2_extent_map_trunc(inode, 0);

 if (ocfs2_meta_lvb_is_trustable(inode, lockres)) {
  mlog(0, "Trusting LVB on inode %llu\n",
       (unsigned long long)oi->ip_blkno);
  ocfs2_refresh_inode_from_lvb(inode);
 } else {


  status = ocfs2_read_inode_block(inode, bh);
  if (status < 0) {
   mlog_errno(status);
   goto bail_refresh;
  }
  fe = (struct ocfs2_dinode *) (*bh)->b_data;
  mlog_bug_on_msg(inode->i_generation !=
    le32_to_cpu(fe->i_generation),
    "Invalid dinode %llu disk generation: %u "
    "inode->i_generation: %u\n",
    (unsigned long long)oi->ip_blkno,
    le32_to_cpu(fe->i_generation),
    inode->i_generation);
  mlog_bug_on_msg(le64_to_cpu(fe->i_dtime) ||
    !(fe->i_flags & cpu_to_le32(OCFS2_VALID_FL)),
    "Stale dinode %llu dtime: %llu flags: 0x%x\n",
    (unsigned long long)oi->ip_blkno,
    (unsigned long long)le64_to_cpu(fe->i_dtime),
    le32_to_cpu(fe->i_flags));

  ocfs2_refresh_inode(inode, fe);
  ocfs2_track_lock_refresh(lockres);
 }

 status = 0;
bail_refresh:
 ocfs2_complete_lock_res_refresh(lockres, status);
bail:
 mlog_exit(status);
 return status;
}
