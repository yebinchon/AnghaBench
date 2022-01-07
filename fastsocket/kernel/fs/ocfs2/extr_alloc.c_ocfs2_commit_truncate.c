
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ocfs2_truncate_context {int tc_dealloc; } ;
struct ocfs2_super {int sb; struct inode* osb_tl_inode; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct ocfs2_path {unsigned long long p_tree_depth; } ;
struct ocfs2_extent_list {TYPE_3__* l_recs; int l_next_free_rec; } ;
struct TYPE_6__ {int i_list; } ;
struct ocfs2_dinode {int i_refcount_loc; TYPE_1__ id2; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_mutex; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_9__ {scalar_t__ ip_clusters; int ip_dyn_features; scalar_t__ ip_blkno; } ;
struct TYPE_8__ {int e_flags; int e_blkno; int e_cpos; } ;
struct TYPE_7__ {scalar_t__ b_blocknr; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int EROFS ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_EXT_REFCOUNTED ;
 int OCFS2_HAS_REFCOUNT_FL ;
 TYPE_5__* OCFS2_I (struct inode*) ;
 int PTR_ERR (int *) ;
 int UINT_MAX ;
 int __ocfs2_flush_truncate_log (struct ocfs2_super*) ;
 int i_size_read (struct inode*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,scalar_t__,unsigned long long) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ocfs2_calc_tree_trunc_credits (int ,scalar_t__,struct ocfs2_dinode*,struct ocfs2_extent_list*) ;
 scalar_t__ ocfs2_clusters_for_bytes (int ,int ) ;
 scalar_t__ ocfs2_clusters_to_blocks (int ,scalar_t__) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_do_truncate (struct ocfs2_super*,scalar_t__,struct inode*,struct buffer_head*,int *,struct ocfs2_truncate_context*,struct ocfs2_path*,struct ocfs2_alloc_context*) ;
 int ocfs2_error (int ,char*,unsigned long long,unsigned long long) ;
 int ocfs2_extent_map_trunc (struct inode*,scalar_t__) ;
 int ocfs2_find_path (int ,struct ocfs2_path*,int ) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_free_path (struct ocfs2_path*) ;
 int ocfs2_free_truncate_context (struct ocfs2_truncate_context*) ;
 scalar_t__ ocfs2_is_empty_extent (TYPE_3__*) ;
 int ocfs2_journal_access_di ;
 int ocfs2_lock_refcount_tree (struct ocfs2_super*,scalar_t__,int,struct ocfs2_refcount_tree**,int *) ;
 struct ocfs2_path* ocfs2_new_path (struct buffer_head*,int *,int ) ;
 int ocfs2_prepare_refcount_change_for_del (struct inode*,struct buffer_head*,scalar_t__,scalar_t__,int*,struct ocfs2_alloc_context**) ;
 scalar_t__ ocfs2_rec_clusters (struct ocfs2_extent_list*,TYPE_3__*) ;
 int ocfs2_reinit_path (struct ocfs2_path*,int) ;
 int ocfs2_run_deallocs (struct ocfs2_super*,int *) ;
 int ocfs2_schedule_truncate_log_flush (struct ocfs2_super*,int) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;
 scalar_t__ ocfs2_truncate_log_needs_flush (struct ocfs2_super*) ;
 int ocfs2_unlock_refcount_tree (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ;
 TYPE_2__* path_leaf_bh (struct ocfs2_path*) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;

int ocfs2_commit_truncate(struct ocfs2_super *osb,
     struct inode *inode,
     struct buffer_head *fe_bh,
     struct ocfs2_truncate_context *tc)
{
 int status, i, credits, tl_sem = 0;
 u32 clusters_to_del, new_highest_cpos, range;
 u64 blkno = 0;
 struct ocfs2_extent_list *el;
 handle_t *handle = ((void*)0);
 struct inode *tl_inode = osb->osb_tl_inode;
 struct ocfs2_path *path = ((void*)0);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)fe_bh->b_data;
 struct ocfs2_alloc_context *meta_ac = ((void*)0);
 struct ocfs2_refcount_tree *ref_tree = ((void*)0);

 mlog_entry_void();

 new_highest_cpos = ocfs2_clusters_for_bytes(osb->sb,
           i_size_read(inode));

 path = ocfs2_new_path(fe_bh, &di->id2.i_list,
         ocfs2_journal_access_di);
 if (!path) {
  status = -ENOMEM;
  mlog_errno(status);
  goto bail;
 }

 ocfs2_extent_map_trunc(inode, new_highest_cpos);

start:



 if (OCFS2_I(inode)->ip_clusters == 0) {
  status = 0;
  goto bail;
 }

 credits = 0;




 status = ocfs2_find_path(INODE_CACHE(inode), path, UINT_MAX);
 if (status) {
  mlog_errno(status);
  goto bail;
 }

 mlog(0, "inode->ip_clusters = %u, tree_depth = %u\n",
      OCFS2_I(inode)->ip_clusters, path->p_tree_depth);
 el = path_leaf_el(path);
 if (le16_to_cpu(el->l_next_free_rec) == 0) {
  ocfs2_error(inode->i_sb,
       "Inode %llu has empty extent block at %llu\n",
       (unsigned long long)OCFS2_I(inode)->ip_blkno,
       (unsigned long long)path_leaf_bh(path)->b_blocknr);
  status = -EROFS;
  goto bail;
 }

 i = le16_to_cpu(el->l_next_free_rec) - 1;
 range = le32_to_cpu(el->l_recs[i].e_cpos) +
  ocfs2_rec_clusters(el, &el->l_recs[i]);
 if (i == 0 && ocfs2_is_empty_extent(&el->l_recs[i])) {
  clusters_to_del = 0;
 } else if (le32_to_cpu(el->l_recs[i].e_cpos) >= new_highest_cpos) {
  clusters_to_del = ocfs2_rec_clusters(el, &el->l_recs[i]);
  blkno = le64_to_cpu(el->l_recs[i].e_blkno);
 } else if (range > new_highest_cpos) {
  clusters_to_del = (ocfs2_rec_clusters(el, &el->l_recs[i]) +
       le32_to_cpu(el->l_recs[i].e_cpos)) -
      new_highest_cpos;
  blkno = le64_to_cpu(el->l_recs[i].e_blkno) +
   ocfs2_clusters_to_blocks(inode->i_sb,
    ocfs2_rec_clusters(el, &el->l_recs[i]) -
    clusters_to_del);
 } else {
  status = 0;
  goto bail;
 }

 mlog(0, "clusters_to_del = %u in this pass, tail blk=%llu\n",
      clusters_to_del, (unsigned long long)path_leaf_bh(path)->b_blocknr);

 if (el->l_recs[i].e_flags & OCFS2_EXT_REFCOUNTED && clusters_to_del) {
  BUG_ON(!(OCFS2_I(inode)->ip_dyn_features &
    OCFS2_HAS_REFCOUNT_FL));

  status = ocfs2_lock_refcount_tree(osb,
      le64_to_cpu(di->i_refcount_loc),
      1, &ref_tree, ((void*)0));
  if (status) {
   mlog_errno(status);
   goto bail;
  }

  status = ocfs2_prepare_refcount_change_for_del(inode, fe_bh,
              blkno,
              clusters_to_del,
              &credits,
              &meta_ac);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }
 }

 mutex_lock(&tl_inode->i_mutex);
 tl_sem = 1;



 if (ocfs2_truncate_log_needs_flush(osb)) {
  status = __ocfs2_flush_truncate_log(osb);
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }
 }

 credits += ocfs2_calc_tree_trunc_credits(osb->sb, clusters_to_del,
      (struct ocfs2_dinode *)fe_bh->b_data,
      el);
 handle = ocfs2_start_trans(osb, credits);
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  handle = ((void*)0);
  mlog_errno(status);
  goto bail;
 }

 status = ocfs2_do_truncate(osb, clusters_to_del, inode, fe_bh, handle,
       tc, path, meta_ac);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 mutex_unlock(&tl_inode->i_mutex);
 tl_sem = 0;

 ocfs2_commit_trans(osb, handle);
 handle = ((void*)0);

 ocfs2_reinit_path(path, 1);

 if (meta_ac) {
  ocfs2_free_alloc_context(meta_ac);
  meta_ac = ((void*)0);
 }

 if (ref_tree) {
  ocfs2_unlock_refcount_tree(osb, ref_tree, 1);
  ref_tree = ((void*)0);
 }





 goto start;

bail:

 ocfs2_schedule_truncate_log_flush(osb, 1);

 if (tl_sem)
  mutex_unlock(&tl_inode->i_mutex);

 if (handle)
  ocfs2_commit_trans(osb, handle);

 if (meta_ac)
  ocfs2_free_alloc_context(meta_ac);

 if (ref_tree)
  ocfs2_unlock_refcount_tree(osb, ref_tree, 1);

 ocfs2_run_deallocs(osb, &tc->tc_dealloc);

 ocfs2_free_path(path);


 ocfs2_free_truncate_context(tc);

 mlog_exit(status);
 return status;
}
