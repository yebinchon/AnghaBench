
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int u16 ;
struct ocfs2_xattr_set_ctxt {int meta_ac; int data_ac; int * handle; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct ocfs2_super {scalar_t__ s_clustersize_bits; int sb; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 int BUG_ON (int) ;
 int ENOSPC ;
 int INODE_CACHE (struct inode*) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 scalar_t__ OCFS2_MAX_XATTR_TREE_LEAF_SIZE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int __ocfs2_claim_clusters (struct ocfs2_super*,int *,int ,int,int,int*,int*) ;
 scalar_t__ bucket_blkno (struct ocfs2_xattr_bucket*) ;
 int mlog (int ,char*,int,...) ;
 int mlog_errno (int) ;
 int ocfs2_adjust_xattr_cross_cluster (struct inode*,int *,struct ocfs2_xattr_bucket*,struct ocfs2_xattr_bucket*,scalar_t__,int,int*,int*) ;
 void* ocfs2_clusters_to_blocks (int ,int) ;
 int ocfs2_init_xattr_tree_extent_tree (struct ocfs2_extent_tree*,int ,struct buffer_head*) ;
 int ocfs2_insert_extent (int *,struct ocfs2_extent_tree*,int,scalar_t__,int,int ,int ) ;
 int ocfs2_journal_access_xb (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;

__attribute__((used)) static int ocfs2_add_new_xattr_cluster(struct inode *inode,
           struct buffer_head *root_bh,
           struct ocfs2_xattr_bucket *first,
           struct ocfs2_xattr_bucket *target,
           u32 *num_clusters,
           u32 prev_cpos,
           int *extend,
           struct ocfs2_xattr_set_ctxt *ctxt)
{
 int ret;
 u16 bpc = ocfs2_clusters_to_blocks(inode->i_sb, 1);
 u32 prev_clusters = *num_clusters;
 u32 clusters_to_add = 1, bit_off, num_bits, v_start = 0;
 u64 block;
 handle_t *handle = ctxt->handle;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_extent_tree et;

 mlog(0, "Add new xattr cluster for %llu, previous xattr hash = %u, "
      "previous xattr blkno = %llu\n",
      (unsigned long long)OCFS2_I(inode)->ip_blkno,
      prev_cpos, (unsigned long long)bucket_blkno(first));

 ocfs2_init_xattr_tree_extent_tree(&et, INODE_CACHE(inode), root_bh);

 ret = ocfs2_journal_access_xb(handle, INODE_CACHE(inode), root_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret < 0) {
  mlog_errno(ret);
  goto leave;
 }

 ret = __ocfs2_claim_clusters(osb, handle, ctxt->data_ac, 1,
         clusters_to_add, &bit_off, &num_bits);
 if (ret < 0) {
  if (ret != -ENOSPC)
   mlog_errno(ret);
  goto leave;
 }

 BUG_ON(num_bits > clusters_to_add);

 block = ocfs2_clusters_to_blocks(osb->sb, bit_off);
 mlog(0, "Allocating %u clusters at block %u for xattr in inode %llu\n",
      num_bits, bit_off, (unsigned long long)OCFS2_I(inode)->ip_blkno);

 if (bucket_blkno(first) + (prev_clusters * bpc) == block &&
     (prev_clusters + num_bits) << osb->s_clustersize_bits <=
      OCFS2_MAX_XATTR_TREE_LEAF_SIZE) {
  v_start = prev_cpos + prev_clusters;
  *num_clusters = prev_clusters + num_bits;
  mlog(0, "Add contiguous %u clusters to previous extent rec.\n",
       num_bits);
 } else {
  ret = ocfs2_adjust_xattr_cross_cluster(inode,
             handle,
             first,
             target,
             block,
             prev_clusters,
             &v_start,
             extend);
  if (ret) {
   mlog_errno(ret);
   goto leave;
  }
 }

 mlog(0, "Insert %u clusters at block %llu for xattr at %u\n",
      num_bits, (unsigned long long)block, v_start);
 ret = ocfs2_insert_extent(handle, &et, v_start, block,
      num_bits, 0, ctxt->meta_ac);
 if (ret < 0) {
  mlog_errno(ret);
  goto leave;
 }

 ret = ocfs2_journal_dirty(handle, root_bh);
 if (ret < 0)
  mlog_errno(ret);

leave:
 return ret;
}
