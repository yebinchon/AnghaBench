
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ocfs2_super {int dummy; } ;
struct inode {int i_sb; } ;
typedef int handle_t ;


 int ENOMEM ;
 int * ERR_PTR (int) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_jbd2_file_inode (int *,struct inode*) ;
 scalar_t__ ocfs2_should_order_data (struct inode*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;

handle_t *ocfs2_start_walk_page_trans(struct inode *inode,
        struct page *page,
        unsigned from,
        unsigned to)
{
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 handle_t *handle;
 int ret = 0;

 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 if (ocfs2_should_order_data(inode)) {
  ret = ocfs2_jbd2_file_inode(handle, inode);
  if (ret < 0)
   mlog_errno(ret);
 }
out:
 if (ret) {
  if (!IS_ERR(handle))
   ocfs2_commit_trans(osb, handle);
  handle = ERR_PTR(ret);
 }
 return handle;
}
