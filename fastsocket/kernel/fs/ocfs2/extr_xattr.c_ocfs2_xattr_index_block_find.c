
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct ocfs2_extent_list {int l_next_free_rec; } ;
struct ocfs2_xattr_tree_root {struct ocfs2_extent_list xt_list; } ;
struct ocfs2_xattr_search {int dummy; } ;
struct TYPE_2__ {struct ocfs2_xattr_tree_root xb_root; } ;
struct ocfs2_xattr_block {TYPE_1__ xb_attrs; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int ENODATA ;
 scalar_t__ le16_to_cpu (int ) ;
 int mlog (int ,char*,char const*,unsigned long long,int) ;
 int mlog_errno (int) ;
 int ocfs2_xattr_bucket_find (struct inode*,int,char const*,int ,scalar_t__,int ,int ,struct ocfs2_xattr_search*) ;
 int ocfs2_xattr_get_rec (struct inode*,int ,scalar_t__*,int *,int *,struct ocfs2_extent_list*) ;
 int ocfs2_xattr_name_hash (struct inode*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int ocfs2_xattr_index_block_find(struct inode *inode,
     struct buffer_head *root_bh,
     int name_index,
     const char *name,
     struct ocfs2_xattr_search *xs)
{
 int ret;
 struct ocfs2_xattr_block *xb =
   (struct ocfs2_xattr_block *)root_bh->b_data;
 struct ocfs2_xattr_tree_root *xb_root = &xb->xb_attrs.xb_root;
 struct ocfs2_extent_list *el = &xb_root->xt_list;
 u64 p_blkno = 0;
 u32 first_hash, num_clusters = 0;
 u32 name_hash = ocfs2_xattr_name_hash(inode, name, strlen(name));

 if (le16_to_cpu(el->l_next_free_rec) == 0)
  return -ENODATA;

 mlog(0, "find xattr %s, hash = %u, index = %d in xattr tree\n",
      name, name_hash, name_index);

 ret = ocfs2_xattr_get_rec(inode, name_hash, &p_blkno, &first_hash,
      &num_clusters, el);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 BUG_ON(p_blkno == 0 || num_clusters == 0 || first_hash > name_hash);

 mlog(0, "find xattr extent rec %u clusters from %llu, the first hash "
      "in the rec is %u\n", num_clusters, (unsigned long long)p_blkno,
      first_hash);

 ret = ocfs2_xattr_bucket_find(inode, name_index, name, name_hash,
          p_blkno, first_hash, num_clusters, xs);

out:
 return ret;
}
