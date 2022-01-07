
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_set_ctxt {int dealloc; scalar_t__ meta_ac; scalar_t__ data_ac; int handle; int * member_1; int * member_0; } ;
struct ocfs2_xattr_search {int not_found; int bucket; struct buffer_head* xattr_bh; struct buffer_head* inode_bh; } ;
struct ocfs2_xattr_info {int name_index; char const* name; void const* value; size_t value_len; } ;
struct ocfs2_super {struct inode* osb_tl_inode; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int i_mutex; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int ip_dyn_features; int ip_xattr_sem; } ;


 int EEXIST ;
 int ENODATA ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (int ) ;
 int OCFS2_HAS_REFCOUNT_FL ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 scalar_t__ OCFS2_INODE_UPDATE_CREDITS ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int ) ;
 int XATTR_CREATE ;
 int XATTR_REPLACE ;
 int __ocfs2_flush_truncate_log (struct ocfs2_super*) ;
 int __ocfs2_xattr_set_handle (struct inode*,struct ocfs2_dinode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*) ;
 int brelse (struct buffer_head*) ;
 int down_write (int *) ;
 int mlog_errno (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int ) ;
 scalar_t__ ocfs2_dealloc_has_cluster (int *) ;
 int ocfs2_free_alloc_context (scalar_t__) ;
 int ocfs2_init_xattr_set_ctxt (struct inode*,struct ocfs2_dinode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*,int,int*) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_prepare_refcount_xattr (struct inode*,struct ocfs2_dinode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_search*,struct ocfs2_refcount_tree**,int*,int*) ;
 int ocfs2_run_deallocs (struct ocfs2_super*,int *) ;
 int ocfs2_schedule_truncate_log_flush (struct ocfs2_super*,int) ;
 int ocfs2_start_trans (struct ocfs2_super*,int) ;
 int ocfs2_supports_xattr (struct ocfs2_super*) ;
 scalar_t__ ocfs2_truncate_log_needs_flush (struct ocfs2_super*) ;
 int ocfs2_try_remove_refcount_tree (struct inode*,struct buffer_head*) ;
 int ocfs2_unlock_refcount_tree (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ;
 int ocfs2_xattr_block_find (struct inode*,int,char const*,struct ocfs2_xattr_search*) ;
 int ocfs2_xattr_bucket_free (int ) ;
 int ocfs2_xattr_bucket_new (struct inode*) ;
 int ocfs2_xattr_ibody_find (struct inode*,int,char const*,struct ocfs2_xattr_search*) ;
 int up_write (int *) ;

int ocfs2_xattr_set(struct inode *inode,
      int name_index,
      const char *name,
      const void *value,
      size_t value_len,
      int flags)
{
 struct buffer_head *di_bh = ((void*)0);
 struct ocfs2_dinode *di;
 int ret, credits, ref_meta = 0, ref_credits = 0;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct inode *tl_inode = osb->osb_tl_inode;
 struct ocfs2_xattr_set_ctxt ctxt = { ((void*)0), ((void*)0), };
 struct ocfs2_refcount_tree *ref_tree = ((void*)0);

 struct ocfs2_xattr_info xi = {
  .name_index = name_index,
  .name = name,
  .value = value,
  .value_len = value_len,
 };

 struct ocfs2_xattr_search xis = {
  .not_found = -ENODATA,
 };

 struct ocfs2_xattr_search xbs = {
  .not_found = -ENODATA,
 };

 if (!ocfs2_supports_xattr(OCFS2_SB(inode->i_sb)))
  return -EOPNOTSUPP;





 xbs.bucket = ocfs2_xattr_bucket_new(inode);
 if (!xbs.bucket) {
  mlog_errno(-ENOMEM);
  return -ENOMEM;
 }

 ret = ocfs2_inode_lock(inode, &di_bh, 1);
 if (ret < 0) {
  mlog_errno(ret);
  goto cleanup_nolock;
 }
 xis.inode_bh = xbs.inode_bh = di_bh;
 di = (struct ocfs2_dinode *)di_bh->b_data;

 down_write(&OCFS2_I(inode)->ip_xattr_sem);




 ret = ocfs2_xattr_ibody_find(inode, name_index, name, &xis);
 if (ret)
  goto cleanup;
 if (xis.not_found) {
  ret = ocfs2_xattr_block_find(inode, name_index, name, &xbs);
  if (ret)
   goto cleanup;
 }

 if (xis.not_found && xbs.not_found) {
  ret = -ENODATA;
  if (flags & XATTR_REPLACE)
   goto cleanup;
  ret = 0;
  if (!value)
   goto cleanup;
 } else {
  ret = -EEXIST;
  if (flags & XATTR_CREATE)
   goto cleanup;
 }


 if (OCFS2_I(inode)->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL &&
     (!xis.not_found || !xbs.not_found)) {
  ret = ocfs2_prepare_refcount_xattr(inode, di, &xi,
         &xis, &xbs, &ref_tree,
         &ref_meta, &ref_credits);
  if (ret) {
   mlog_errno(ret);
   goto cleanup;
  }
 }

 mutex_lock(&tl_inode->i_mutex);

 if (ocfs2_truncate_log_needs_flush(osb)) {
  ret = __ocfs2_flush_truncate_log(osb);
  if (ret < 0) {
   mutex_unlock(&tl_inode->i_mutex);
   mlog_errno(ret);
   goto cleanup;
  }
 }
 mutex_unlock(&tl_inode->i_mutex);

 ret = ocfs2_init_xattr_set_ctxt(inode, di, &xi, &xis,
     &xbs, &ctxt, ref_meta, &credits);
 if (ret) {
  mlog_errno(ret);
  goto cleanup;
 }


 credits += OCFS2_INODE_UPDATE_CREDITS;
 ctxt.handle = ocfs2_start_trans(osb, credits + ref_credits);
 if (IS_ERR(ctxt.handle)) {
  ret = PTR_ERR(ctxt.handle);
  mlog_errno(ret);
  goto cleanup;
 }

 ret = __ocfs2_xattr_set_handle(inode, di, &xi, &xis, &xbs, &ctxt);

 ocfs2_commit_trans(osb, ctxt.handle);

 if (ctxt.data_ac)
  ocfs2_free_alloc_context(ctxt.data_ac);
 if (ctxt.meta_ac)
  ocfs2_free_alloc_context(ctxt.meta_ac);
 if (ocfs2_dealloc_has_cluster(&ctxt.dealloc))
  ocfs2_schedule_truncate_log_flush(osb, 1);
 ocfs2_run_deallocs(osb, &ctxt.dealloc);

cleanup:
 if (ref_tree)
  ocfs2_unlock_refcount_tree(osb, ref_tree, 1);
 up_write(&OCFS2_I(inode)->ip_xattr_sem);
 if (!value && !ret) {
  ret = ocfs2_try_remove_refcount_tree(inode, di_bh);
  if (ret)
   mlog_errno(ret);
 }
 ocfs2_inode_unlock(inode, 1);
cleanup_nolock:
 brelse(di_bh);
 brelse(xbs.xattr_bh);
 ocfs2_xattr_bucket_free(xbs.bucket);

 return ret;
}
