
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_QUOTA_BLOCK_UPDATE_CREDITS ;
 int OCFS2_SB (struct super_block*) ;
 int PTR_ERR (int *) ;
 int lock_buffer (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (int ,int *) ;
 int ocfs2_journal_access_dq (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int * ocfs2_start_trans (int ,int ) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static int ocfs2_modify_bh(struct inode *inode, struct buffer_head *bh,
  void (*modify)(struct buffer_head *, void *), void *private)
{
 struct super_block *sb = inode->i_sb;
 handle_t *handle;
 int status;

 handle = ocfs2_start_trans(OCFS2_SB(sb),
       OCFS2_QUOTA_BLOCK_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  mlog_errno(status);
  return status;
 }
 status = ocfs2_journal_access_dq(handle, INODE_CACHE(inode), bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  ocfs2_commit_trans(OCFS2_SB(sb), handle);
  return status;
 }
 lock_buffer(bh);
 modify(bh, private);
 unlock_buffer(bh);
 status = ocfs2_journal_dirty(handle, bh);
 if (status < 0) {
  mlog_errno(status);
  ocfs2_commit_trans(OCFS2_SB(sb), handle);
  return status;
 }
 status = ocfs2_commit_trans(OCFS2_SB(sb), handle);
 if (status < 0) {
  mlog_errno(status);
  return status;
 }
 return 0;
}
