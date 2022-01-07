
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ocfs2_super {TYPE_2__* sb; int root_blkno; } ;
struct ocfs2_dir_lookup_result {int * member_0; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_mutex; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_7__ {int ip_blkno; } ;
struct TYPE_6__ {TYPE_1__* dq_op; } ;
struct TYPE_5__ {scalar_t__ (* alloc_inode ) (struct inode*,int) ;} ;


 int EDQUOT ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSPC ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ NO_QUOTA ;
 TYPE_4__* OCFS2_I (struct inode*) ;
 int OCFS2_ORPHAN_NAMELEN ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int clear_nlink (struct inode*) ;
 int iput (struct inode*) ;
 int mlog (int ,char*) ;
 int mlog_errno (int) ;
 int mutex_unlock (int *) ;
 int ocfs2_blkno_stringify (int ,char*) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_free_dir_lookup_result (struct ocfs2_dir_lookup_result*) ;
 struct inode* ocfs2_get_init_inode (struct inode*,int) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_mknod_credits (TYPE_2__*,int ,int ) ;
 int ocfs2_mknod_locked (struct ocfs2_super*,struct inode*,struct inode*,int ,struct buffer_head**,struct buffer_head*,int *,struct ocfs2_alloc_context*) ;
 int ocfs2_open_lock (struct inode*) ;
 int ocfs2_orphan_add (struct ocfs2_super*,int *,struct inode*,struct ocfs2_dinode*,char*,struct ocfs2_dir_lookup_result*,struct inode*) ;
 int ocfs2_prepare_orphan_dir (struct ocfs2_super*,struct inode**,int ,char*,struct ocfs2_dir_lookup_result*) ;
 int ocfs2_reserve_new_inode (struct ocfs2_super*,struct ocfs2_alloc_context**) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 scalar_t__ sb_any_quota_active (TYPE_2__*) ;
 scalar_t__ stub1 (struct inode*,int) ;
 int vfs_dq_free_inode (struct inode*) ;

int ocfs2_create_inode_in_orphan(struct inode *dir,
     int mode,
     struct inode **new_inode)
{
 int status, did_quota_inode = 0;
 struct inode *inode = ((void*)0);
 struct inode *orphan_dir = ((void*)0);
 struct ocfs2_super *osb = OCFS2_SB(dir->i_sb);
 struct ocfs2_dinode *di = ((void*)0);
 handle_t *handle = ((void*)0);
 char orphan_name[OCFS2_ORPHAN_NAMELEN + 1];
 struct buffer_head *parent_di_bh = ((void*)0);
 struct buffer_head *new_di_bh = ((void*)0);
 struct ocfs2_alloc_context *inode_ac = ((void*)0);
 struct ocfs2_dir_lookup_result orphan_insert = { ((void*)0), };

 status = ocfs2_inode_lock(dir, &parent_di_bh, 1);
 if (status < 0) {
  if (status != -ENOENT)
   mlog_errno(status);
  return status;
 }





 status = ocfs2_prepare_orphan_dir(osb, &orphan_dir,
       osb->root_blkno,
       orphan_name, &orphan_insert);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }


 status = ocfs2_reserve_new_inode(osb, &inode_ac);
 if (status < 0) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto leave;
 }

 inode = ocfs2_get_init_inode(dir, mode);
 if (!inode) {
  status = -ENOMEM;
  mlog_errno(status);
  goto leave;
 }

 handle = ocfs2_start_trans(osb, ocfs2_mknod_credits(osb->sb, 0, 0));
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  handle = ((void*)0);
  mlog_errno(status);
  goto leave;
 }



 if (sb_any_quota_active(osb->sb) &&
     osb->sb->dq_op->alloc_inode(inode, 1) == NO_QUOTA) {
  status = -EDQUOT;
  goto leave;
 }
 did_quota_inode = 1;


 status = ocfs2_mknod_locked(osb, dir, inode,
        0, &new_di_bh, parent_di_bh, handle,
        inode_ac);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 status = ocfs2_blkno_stringify(OCFS2_I(inode)->ip_blkno, orphan_name);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 di = (struct ocfs2_dinode *)new_di_bh->b_data;
 status = ocfs2_orphan_add(osb, handle, inode, di, orphan_name,
      &orphan_insert, orphan_dir);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }


 status = ocfs2_open_lock(inode);
 if (status < 0)
  mlog_errno(status);

leave:
 if (status < 0 && did_quota_inode)
  vfs_dq_free_inode(inode);
 if (handle)
  ocfs2_commit_trans(osb, handle);

 if (orphan_dir) {

  ocfs2_inode_unlock(orphan_dir, 1);
  mutex_unlock(&orphan_dir->i_mutex);
  iput(orphan_dir);
 }

 if (status == -ENOSPC)
  mlog(0, "Disk is full\n");

 if ((status < 0) && inode) {
  clear_nlink(inode);
  iput(inode);
 }

 if (inode_ac)
  ocfs2_free_alloc_context(inode_ac);

 brelse(new_di_bh);

 if (!status)
  *new_inode = inode;

 ocfs2_free_dir_lookup_result(&orphan_insert);

 ocfs2_inode_unlock(dir, 1);
 brelse(parent_di_bh);
 return status;
}
