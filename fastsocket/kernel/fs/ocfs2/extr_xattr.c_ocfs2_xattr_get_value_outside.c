
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
typedef scalar_t__ u32 ;
struct ocfs2_extent_list {int dummy; } ;
struct ocfs2_xattr_value_root {int xr_clusters; struct ocfs2_extent_list xr_list; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int b_data; } ;
struct TYPE_2__ {size_t s_blocksize; } ;


 int INODE_CACHE (struct inode*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memcpy (void*,int ,size_t) ;
 int mlog_errno (int) ;
 void* ocfs2_clusters_to_blocks (TYPE_1__*,scalar_t__) ;
 int ocfs2_read_block (int ,void*,struct buffer_head**,int *) ;
 int ocfs2_xattr_get_clusters (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,struct ocfs2_extent_list*,int *) ;

__attribute__((used)) static int ocfs2_xattr_get_value_outside(struct inode *inode,
      struct ocfs2_xattr_value_root *xv,
      void *buffer,
      size_t len)
{
 u32 cpos, p_cluster, num_clusters, bpc, clusters;
 u64 blkno;
 int i, ret = 0;
 size_t cplen, blocksize;
 struct buffer_head *bh = ((void*)0);
 struct ocfs2_extent_list *el;

 el = &xv->xr_list;
 clusters = le32_to_cpu(xv->xr_clusters);
 bpc = ocfs2_clusters_to_blocks(inode->i_sb, 1);
 blocksize = inode->i_sb->s_blocksize;

 cpos = 0;
 while (cpos < clusters) {
  ret = ocfs2_xattr_get_clusters(inode, cpos, &p_cluster,
            &num_clusters, el, ((void*)0));
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  blkno = ocfs2_clusters_to_blocks(inode->i_sb, p_cluster);

  for (i = 0; i < num_clusters * bpc; i++, blkno++) {
   ret = ocfs2_read_block(INODE_CACHE(inode), blkno,
            &bh, ((void*)0));
   if (ret) {
    mlog_errno(ret);
    goto out;
   }

   cplen = len >= blocksize ? blocksize : len;
   memcpy(buffer, bh->b_data, cplen);
   len -= cplen;
   buffer += cplen;

   brelse(bh);
   bh = ((void*)0);
   if (len == 0)
    break;
  }
  cpos += num_clusters;
 }
out:
 return ret;
}
