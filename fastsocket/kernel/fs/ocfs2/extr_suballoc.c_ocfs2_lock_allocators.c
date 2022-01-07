
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_extent_tree {int et_root_el; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;


 int BUG_ON (int) ;
 int ENOSPC ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int mlog_errno (int) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_num_free_extents (struct ocfs2_super*,struct ocfs2_extent_tree*) ;
 int ocfs2_reserve_clusters (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ;
 int ocfs2_reserve_new_metadata (struct ocfs2_super*,int ,struct ocfs2_alloc_context**) ;
 scalar_t__ ocfs2_sparse_alloc (struct ocfs2_super*) ;

int ocfs2_lock_allocators(struct inode *inode,
     struct ocfs2_extent_tree *et,
     u32 clusters_to_add, u32 extents_to_split,
     struct ocfs2_alloc_context **data_ac,
     struct ocfs2_alloc_context **meta_ac)
{
 int ret = 0, num_free_extents;
 unsigned int max_recs_needed = clusters_to_add + 2 * extents_to_split;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 *meta_ac = ((void*)0);
 if (data_ac)
  *data_ac = ((void*)0);

 BUG_ON(clusters_to_add != 0 && data_ac == ((void*)0));

 num_free_extents = ocfs2_num_free_extents(osb, et);
 if (num_free_extents < 0) {
  ret = num_free_extents;
  mlog_errno(ret);
  goto out;
 }
 if (!num_free_extents ||
     (ocfs2_sparse_alloc(osb) && num_free_extents < max_recs_needed)) {
  ret = ocfs2_reserve_new_metadata(osb, et->et_root_el, meta_ac);
  if (ret < 0) {
   if (ret != -ENOSPC)
    mlog_errno(ret);
   goto out;
  }
 }

 if (clusters_to_add == 0)
  goto out;

 ret = ocfs2_reserve_clusters(osb, clusters_to_add, data_ac);
 if (ret < 0) {
  if (ret != -ENOSPC)
   mlog_errno(ret);
  goto out;
 }

out:
 if (ret) {
  if (*meta_ac) {
   ocfs2_free_alloc_context(*meta_ac);
   *meta_ac = ((void*)0);
  }




 }

 return ret;
}
