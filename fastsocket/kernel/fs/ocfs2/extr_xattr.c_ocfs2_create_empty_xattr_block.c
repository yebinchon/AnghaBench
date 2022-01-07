
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
typedef int handle_t ;


 scalar_t__ IS_ERR (int *) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int OCFS2_XATTR_BLOCK_CREATE_CREDITS ;
 int PTR_ERR (int *) ;
 int mlog (int ,char*,unsigned long long,int) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_create_xattr_block (int *,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,struct buffer_head**,int) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_reserve_new_metadata_blocks (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;

__attribute__((used)) static int ocfs2_create_empty_xattr_block(struct inode *inode,
       struct buffer_head *fe_bh,
       struct buffer_head **ret_bh,
       int indexed)
{
 int ret;
 handle_t *handle;
 struct ocfs2_alloc_context *meta_ac;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 ret = ocfs2_reserve_new_metadata_blocks(osb, 1, &meta_ac);
 if (ret < 0) {
  mlog_errno(ret);
  return ret;
 }

 handle = ocfs2_start_trans(osb, OCFS2_XATTR_BLOCK_CREATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 mlog(0, "create new xattr block for inode %llu, index = %d\n",
      (unsigned long long)fe_bh->b_blocknr, indexed);
 ret = ocfs2_create_xattr_block(handle, inode, fe_bh,
           meta_ac, ret_bh, indexed);
 if (ret)
  mlog_errno(ret);

 ocfs2_commit_trans(osb, handle);
out:
 ocfs2_free_alloc_context(meta_ac);
 return ret;
}
