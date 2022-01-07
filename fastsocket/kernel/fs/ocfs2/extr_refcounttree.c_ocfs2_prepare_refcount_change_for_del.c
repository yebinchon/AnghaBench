
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ocfs2_refcount_tree {int rf_ci; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_dinode {int i_refcount_loc; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; int i_ino; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int EROFS ;
 int OCFS2_HAS_REFCOUNT_FL ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_SB (int ) ;
 int brelse (struct buffer_head*) ;
 int le64_to_cpu (int ) ;
 int mlog (int ,char*,int,int) ;
 int mlog_errno (int) ;
 int ocfs2_blocks_to_clusters (int ,int ) ;
 int ocfs2_calc_refcount_meta_credits (int ,int *,struct buffer_head*,int ,int ,int*,int*) ;
 int ocfs2_error (int ,char*,int ) ;
 int ocfs2_get_refcount_tree (int ,int ,struct ocfs2_refcount_tree**) ;
 int ocfs2_read_refcount_block (int *,int ,struct buffer_head**) ;
 int ocfs2_refcount_tree (int ) ;
 int ocfs2_reserve_new_metadata_blocks (int ,int,struct ocfs2_alloc_context**) ;

int ocfs2_prepare_refcount_change_for_del(struct inode *inode,
       struct buffer_head *di_bh,
       u64 phys_blkno,
       u32 clusters,
       int *credits,
       struct ocfs2_alloc_context **meta_ac)
{
 int ret, ref_blocks = 0;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct buffer_head *ref_root_bh = ((void*)0);
 struct ocfs2_refcount_tree *tree;
 u64 start_cpos = ocfs2_blocks_to_clusters(inode->i_sb, phys_blkno);

 if (!ocfs2_refcount_tree(OCFS2_SB(inode->i_sb))) {
  ocfs2_error(inode->i_sb, "Inode %lu want to use refcount "
       "tree, but the feature bit is not set in the "
       "super block.", inode->i_ino);
  ret = -EROFS;
  goto out;
 }

 BUG_ON(!(oi->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL));

 ret = ocfs2_get_refcount_tree(OCFS2_SB(inode->i_sb),
          le64_to_cpu(di->i_refcount_loc), &tree);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_read_refcount_block(&tree->rf_ci,
     le64_to_cpu(di->i_refcount_loc),
     &ref_root_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_calc_refcount_meta_credits(inode->i_sb,
            &tree->rf_ci,
            ref_root_bh,
            start_cpos, clusters,
            &ref_blocks, credits);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 mlog(0, "reserve new metadata %d, credits = %d\n",
      ref_blocks, *credits);

 if (ref_blocks) {
  ret = ocfs2_reserve_new_metadata_blocks(OCFS2_SB(inode->i_sb),
       ref_blocks, meta_ac);
  if (ret)
   mlog_errno(ret);
 }

out:
 brelse(ref_root_bh);
 return ret;
}
