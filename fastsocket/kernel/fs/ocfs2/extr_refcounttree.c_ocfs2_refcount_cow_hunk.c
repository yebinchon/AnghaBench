
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct TYPE_2__ {int i_list; } ;
struct ocfs2_dinode {int i_refcount_loc; TYPE_1__ id2; } ;
struct ocfs2_cow_context {int data_et; int get_clusters; int cow_duplicate_clusters; struct buffer_head* ref_root_bh; struct ocfs2_refcount_tree* ref_tree; scalar_t__ cow_len; scalar_t__ cow_start; struct inode* inode; } ;
struct inode {int i_ino; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int INODE_CACHE (struct inode*) ;
 int OCFS2_HAS_REFCOUNT_FL ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int brelse (struct buffer_head*) ;
 int kfree (struct ocfs2_cow_context*) ;
 struct ocfs2_cow_context* kzalloc (int,int ) ;
 int le64_to_cpu (int ) ;
 int mlog (int ,char*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int mlog_errno (int) ;
 int ocfs2_di_get_clusters ;
 int ocfs2_duplicate_clusters_by_page ;
 int ocfs2_extent_map_trunc (struct inode*,scalar_t__) ;
 int ocfs2_init_dinode_extent_tree (int *,int ,struct buffer_head*) ;
 int ocfs2_lock_refcount_tree (struct ocfs2_super*,int ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ;
 int ocfs2_refcount_cal_cow_clusters (struct inode*,int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 int ocfs2_replace_cow (struct ocfs2_cow_context*) ;
 int ocfs2_unlock_refcount_tree (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ;

__attribute__((used)) static int ocfs2_refcount_cow_hunk(struct inode *inode,
       struct buffer_head *di_bh,
       u32 cpos, u32 write_len, u32 max_cpos)
{
 int ret;
 u32 cow_start = 0, cow_len = 0;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
 struct buffer_head *ref_root_bh = ((void*)0);
 struct ocfs2_refcount_tree *ref_tree;
 struct ocfs2_cow_context *context = ((void*)0);

 BUG_ON(!(oi->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL));

 ret = ocfs2_refcount_cal_cow_clusters(inode, &di->id2.i_list,
           cpos, write_len, max_cpos,
           &cow_start, &cow_len);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 mlog(0, "CoW inode %lu, cpos %u, write_len %u, cow_start %u, "
      "cow_len %u\n", inode->i_ino,
      cpos, write_len, cow_start, cow_len);

 BUG_ON(cow_len == 0);

 context = kzalloc(sizeof(struct ocfs2_cow_context), GFP_NOFS);
 if (!context) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_lock_refcount_tree(osb, le64_to_cpu(di->i_refcount_loc),
           1, &ref_tree, &ref_root_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 context->inode = inode;
 context->cow_start = cow_start;
 context->cow_len = cow_len;
 context->ref_tree = ref_tree;
 context->ref_root_bh = ref_root_bh;
 context->cow_duplicate_clusters = ocfs2_duplicate_clusters_by_page;
 context->get_clusters = ocfs2_di_get_clusters;

 ocfs2_init_dinode_extent_tree(&context->data_et,
          INODE_CACHE(inode), di_bh);

 ret = ocfs2_replace_cow(context);
 if (ret)
  mlog_errno(ret);






 ocfs2_extent_map_trunc(inode, cow_start);

 ocfs2_unlock_refcount_tree(osb, ref_tree, 1);
 brelse(ref_root_bh);
out:
 kfree(context);
 return ret;
}
