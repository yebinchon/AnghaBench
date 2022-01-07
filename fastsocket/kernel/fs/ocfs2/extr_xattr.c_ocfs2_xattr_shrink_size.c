
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ocfs2_xattr_value_buf {TYPE_1__* vb_xv; } ;
struct ocfs2_xattr_set_ctxt {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int xr_list; } ;


 int INODE_CACHE (struct inode*) ;
 int __ocfs2_remove_xattr_range (struct inode*,struct ocfs2_xattr_value_buf*,scalar_t__,scalar_t__,scalar_t__,unsigned int,struct ocfs2_xattr_set_ctxt*) ;
 int mlog_errno (int) ;
 int ocfs2_clusters_to_blocks (int ,scalar_t__) ;
 int ocfs2_remove_xattr_clusters_from_cache (int ,int ,scalar_t__) ;
 int ocfs2_xattr_get_clusters (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,int *,unsigned int*) ;

__attribute__((used)) static int ocfs2_xattr_shrink_size(struct inode *inode,
       u32 old_clusters,
       u32 new_clusters,
       struct ocfs2_xattr_value_buf *vb,
       struct ocfs2_xattr_set_ctxt *ctxt)
{
 int ret = 0;
 unsigned int ext_flags;
 u32 trunc_len, cpos, phys_cpos, alloc_size;
 u64 block;

 if (old_clusters <= new_clusters)
  return 0;

 cpos = new_clusters;
 trunc_len = old_clusters - new_clusters;
 while (trunc_len) {
  ret = ocfs2_xattr_get_clusters(inode, cpos, &phys_cpos,
            &alloc_size,
            &vb->vb_xv->xr_list, &ext_flags);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  if (alloc_size > trunc_len)
   alloc_size = trunc_len;

  ret = __ocfs2_remove_xattr_range(inode, vb, cpos,
       phys_cpos, alloc_size,
       ext_flags, ctxt);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  block = ocfs2_clusters_to_blocks(inode->i_sb, phys_cpos);
  ocfs2_remove_xattr_clusters_from_cache(INODE_CACHE(inode),
             block, alloc_size);
  cpos += alloc_size;
  trunc_len -= alloc_size;
 }

out:
 return ret;
}
