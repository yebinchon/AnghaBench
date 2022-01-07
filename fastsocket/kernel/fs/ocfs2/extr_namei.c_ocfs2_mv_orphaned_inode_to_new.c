
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_super {int sb; int slot_num; } ;
struct ocfs2_dir_lookup_result {int * member_0; } ;
struct ocfs2_dinode {scalar_t__ i_orphaned_slot; int i_flags; int i_links_count; } ;
struct inode {int i_mutex; int i_sb; } ;
struct TYPE_3__ {int len; int name; } ;
struct dentry {int * d_op; TYPE_1__ d_name; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_4__ {int ip_blkno; } ;


 int EEXIST ;
 int ENOENT ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_ORPHANED_FL ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int ORPHAN_DIR_SYSTEM_INODE ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int le32_add_cpu (int *,int ) ;
 int mlog_entry (char*,struct inode*,struct dentry*,int ,int ) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_add_entry (int *,struct dentry*,struct inode*,int ,struct buffer_head*,struct ocfs2_dir_lookup_result*) ;
 int ocfs2_check_dir_for_entry (struct inode*,int ,int ) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_dentry_attach_lock (struct dentry*,struct inode*,int ) ;
 int ocfs2_dentry_ops ;
 int ocfs2_free_dir_lookup_result (struct ocfs2_dir_lookup_result*) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_orphan_del (struct ocfs2_super*,int *,struct inode*,struct inode*,struct buffer_head*) ;
 int ocfs2_prepare_dir_for_insert (struct ocfs2_super*,struct inode*,struct buffer_head*,int ,int ,struct ocfs2_dir_lookup_result*) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;
 int ocfs2_rename_credits (int ) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;

int ocfs2_mv_orphaned_inode_to_new(struct inode *dir,
       struct inode *inode,
       struct dentry *dentry)
{
 int status = 0;
 struct buffer_head *parent_di_bh = ((void*)0);
 handle_t *handle = ((void*)0);
 struct ocfs2_super *osb = OCFS2_SB(dir->i_sb);
 struct ocfs2_dinode *dir_di, *di;
 struct inode *orphan_dir_inode = ((void*)0);
 struct buffer_head *orphan_dir_bh = ((void*)0);
 struct buffer_head *di_bh = ((void*)0);
 struct ocfs2_dir_lookup_result lookup = { ((void*)0), };

 mlog_entry("(0x%p, 0x%p, %.*s')\n", dir, dentry,
     dentry->d_name.len, dentry->d_name.name);

 status = ocfs2_inode_lock(dir, &parent_di_bh, 1);
 if (status < 0) {
  if (status != -ENOENT)
   mlog_errno(status);
  return status;
 }

 dir_di = (struct ocfs2_dinode *) parent_di_bh->b_data;
 if (!dir_di->i_links_count) {

  status = -ENOENT;
  goto leave;
 }

 status = ocfs2_check_dir_for_entry(dir, dentry->d_name.name,
        dentry->d_name.len);
 if (status)
  goto leave;


 status = ocfs2_prepare_dir_for_insert(osb, dir, parent_di_bh,
           dentry->d_name.name,
           dentry->d_name.len, &lookup);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 orphan_dir_inode = ocfs2_get_system_file_inode(osb,
             ORPHAN_DIR_SYSTEM_INODE,
             osb->slot_num);
 if (!orphan_dir_inode) {
  status = -EEXIST;
  mlog_errno(status);
  goto leave;
 }

 mutex_lock(&orphan_dir_inode->i_mutex);

 status = ocfs2_inode_lock(orphan_dir_inode, &orphan_dir_bh, 1);
 if (status < 0) {
  mlog_errno(status);
  mutex_unlock(&orphan_dir_inode->i_mutex);
  iput(orphan_dir_inode);
  goto leave;
 }

 status = ocfs2_read_inode_block(inode, &di_bh);
 if (status < 0) {
  mlog_errno(status);
  goto orphan_unlock;
 }

 handle = ocfs2_start_trans(osb, ocfs2_rename_credits(osb->sb));
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  handle = ((void*)0);
  mlog_errno(status);
  goto orphan_unlock;
 }

 status = ocfs2_journal_access_di(handle, INODE_CACHE(inode),
      di_bh, OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto out_commit;
 }

 status = ocfs2_orphan_del(osb, handle, orphan_dir_inode, inode,
      orphan_dir_bh);
 if (status < 0) {
  mlog_errno(status);
  goto out_commit;
 }

 di = (struct ocfs2_dinode *)di_bh->b_data;
 le32_add_cpu(&di->i_flags, -OCFS2_ORPHANED_FL);
 di->i_orphaned_slot = 0;
 ocfs2_journal_dirty(handle, di_bh);

 status = ocfs2_add_entry(handle, dentry, inode,
     OCFS2_I(inode)->ip_blkno, parent_di_bh,
     &lookup);
 if (status < 0) {
  mlog_errno(status);
  goto out_commit;
 }

 status = ocfs2_dentry_attach_lock(dentry, inode,
       OCFS2_I(dir)->ip_blkno);
 if (status) {
  mlog_errno(status);
  goto out_commit;
 }

 insert_inode_hash(inode);
 dentry->d_op = &ocfs2_dentry_ops;
 d_instantiate(dentry, inode);
 status = 0;
out_commit:
 ocfs2_commit_trans(osb, handle);
orphan_unlock:
 ocfs2_inode_unlock(orphan_dir_inode, 1);
 mutex_unlock(&orphan_dir_inode->i_mutex);
 iput(orphan_dir_inode);
leave:

 ocfs2_inode_unlock(dir, 1);

 brelse(di_bh);
 brelse(parent_di_bh);
 brelse(orphan_dir_bh);

 ocfs2_free_dir_lookup_result(&lookup);

 mlog_exit(status);

 return status;
}
