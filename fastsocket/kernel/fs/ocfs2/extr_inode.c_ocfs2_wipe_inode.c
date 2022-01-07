
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int i_orphaned_slot; } ;
struct inode {int i_mutex; int i_mode; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EEXIST ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int ORPHAN_DIR_SYSTEM_INODE ;
 scalar_t__ S_ISDIR (int ) ;
 int brelse (struct buffer_head*) ;
 int iput (struct inode*) ;
 int le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_check_orphan_recovery_state (struct ocfs2_super*,int) ;
 int ocfs2_dx_dir_truncate (struct inode*,struct buffer_head*) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_remove_inode (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*) ;
 int ocfs2_remove_refcount_tree (struct inode*,struct buffer_head*) ;
 int ocfs2_signal_wipe_completion (struct ocfs2_super*,int) ;
 int ocfs2_truncate_for_delete (struct ocfs2_super*,struct inode*,struct buffer_head*) ;
 int ocfs2_xattr_remove (struct inode*,struct buffer_head*) ;

__attribute__((used)) static int ocfs2_wipe_inode(struct inode *inode,
       struct buffer_head *di_bh)
{
 int status, orphaned_slot;
 struct inode *orphan_dir_inode = ((void*)0);
 struct buffer_head *orphan_dir_bh = ((void*)0);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_dinode *di;

 di = (struct ocfs2_dinode *) di_bh->b_data;
 orphaned_slot = le16_to_cpu(di->i_orphaned_slot);

 status = ocfs2_check_orphan_recovery_state(osb, orphaned_slot);
 if (status)
  return status;

 orphan_dir_inode = ocfs2_get_system_file_inode(osb,
             ORPHAN_DIR_SYSTEM_INODE,
             orphaned_slot);
 if (!orphan_dir_inode) {
  status = -EEXIST;
  mlog_errno(status);
  goto bail;
 }




 mutex_lock(&orphan_dir_inode->i_mutex);
 status = ocfs2_inode_lock(orphan_dir_inode, &orphan_dir_bh, 1);
 if (status < 0) {
  mutex_unlock(&orphan_dir_inode->i_mutex);

  mlog_errno(status);
  goto bail;
 }





 status = ocfs2_truncate_for_delete(osb, inode, di_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail_unlock_dir;
 }


 if (S_ISDIR(inode->i_mode)) {
  status = ocfs2_dx_dir_truncate(inode, di_bh);
  if (status) {
   mlog_errno(status);
   goto bail_unlock_dir;
  }
 }


 status = ocfs2_xattr_remove(inode, di_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail_unlock_dir;
 }

 status = ocfs2_remove_refcount_tree(inode, di_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail_unlock_dir;
 }

 status = ocfs2_remove_inode(inode, di_bh, orphan_dir_inode,
        orphan_dir_bh);
 if (status < 0)
  mlog_errno(status);

bail_unlock_dir:
 ocfs2_inode_unlock(orphan_dir_inode, 1);
 mutex_unlock(&orphan_dir_inode->i_mutex);
 brelse(orphan_dir_bh);
bail:
 iput(orphan_dir_inode);
 ocfs2_signal_wipe_completion(osb, orphaned_slot);

 return status;
}
