
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ocfs2_extent_list {int dummy; } ;
struct ocfs2_xattr_tree_root {struct ocfs2_extent_list xt_list; } ;
struct ocfs2_xattr_set_ctxt {int handle; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct TYPE_4__ {struct ocfs2_xattr_tree_root xb_root; } ;
struct ocfs2_xattr_block {TYPE_1__ xb_attrs; } ;
struct ocfs2_super {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_6__ {int xh_num_buckets; TYPE_2__* xh_entries; } ;
struct TYPE_5__ {int xe_name_hash; } ;


 int ENOMEM ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 scalar_t__ bucket_blkno (struct ocfs2_xattr_bucket*) ;
 TYPE_3__* bucket_xh (struct ocfs2_xattr_bucket*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long) ;
 int mlog_errno (int) ;
 int ocfs2_add_new_xattr_cluster (struct inode*,struct buffer_head*,struct ocfs2_xattr_bucket*,struct ocfs2_xattr_bucket*,int*,int,int*,struct ocfs2_xattr_set_ctxt*) ;
 int ocfs2_extend_xattr_bucket (struct inode*,int ,struct ocfs2_xattr_bucket*,scalar_t__,int) ;
 int ocfs2_read_xattr_bucket (struct ocfs2_xattr_bucket*,int ) ;
 int ocfs2_xattr_bucket_free (struct ocfs2_xattr_bucket*) ;
 struct ocfs2_xattr_bucket* ocfs2_xattr_bucket_new (struct inode*) ;
 int ocfs2_xattr_buckets_per_cluster (struct ocfs2_super*) ;
 int ocfs2_xattr_get_rec (struct inode*,int,int *,int*,int*,struct ocfs2_extent_list*) ;

__attribute__((used)) static int ocfs2_add_new_xattr_bucket(struct inode *inode,
          struct buffer_head *xb_bh,
          struct ocfs2_xattr_bucket *target,
          struct ocfs2_xattr_set_ctxt *ctxt)
{
 struct ocfs2_xattr_block *xb =
   (struct ocfs2_xattr_block *)xb_bh->b_data;
 struct ocfs2_xattr_tree_root *xb_root = &xb->xb_attrs.xb_root;
 struct ocfs2_extent_list *el = &xb_root->xt_list;
 u32 name_hash =
  le32_to_cpu(bucket_xh(target)->xh_entries[0].xe_name_hash);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 int ret, num_buckets, extend = 1;
 u64 p_blkno;
 u32 e_cpos, num_clusters;

 struct ocfs2_xattr_bucket *first;

 mlog(0, "Add new xattr bucket starting from %llu\n",
      (unsigned long long)bucket_blkno(target));


 first = ocfs2_xattr_bucket_new(inode);
 if (!first) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_xattr_get_rec(inode, name_hash, &p_blkno, &e_cpos,
      &num_clusters, el);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_read_xattr_bucket(first, p_blkno);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 num_buckets = ocfs2_xattr_buckets_per_cluster(osb) * num_clusters;
 if (num_buckets == le16_to_cpu(bucket_xh(first)->xh_num_buckets)) {




  ret = ocfs2_add_new_xattr_cluster(inode,
        xb_bh,
        first,
        target,
        &num_clusters,
        e_cpos,
        &extend,
        ctxt);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 if (extend) {
  ret = ocfs2_extend_xattr_bucket(inode,
      ctxt->handle,
      first,
      bucket_blkno(target),
      num_clusters);
  if (ret)
   mlog_errno(ret);
 }

out:
 ocfs2_xattr_bucket_free(first);

 return ret;
}
