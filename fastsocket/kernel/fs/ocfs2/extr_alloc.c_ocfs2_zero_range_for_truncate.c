
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct super_block {scalar_t__ s_blocksize_bits; } ;
struct page {int dummy; } ;
struct inode {int i_mapping; struct super_block* i_sb; } ;
typedef int handle_t ;


 int ENOMEM ;
 int GFP_NOFS ;
 unsigned int OCFS2_EXT_UNWRITTEN ;
 int OCFS2_SB (struct super_block*) ;
 int SYNC_FILE_RANGE_WRITE ;
 int do_sync_mapping_range (int ,scalar_t__,scalar_t__,int ) ;
 struct page** kcalloc (int ,int,int ) ;
 int kfree (struct page**) ;
 int mlog_errno (int) ;
 int ocfs2_extent_map_get_blocks (struct inode*,scalar_t__,scalar_t__*,int *,unsigned int*) ;
 int ocfs2_grab_eof_pages (struct inode*,scalar_t__,scalar_t__,struct page**,int*) ;
 int ocfs2_pages_per_cluster (struct super_block*) ;
 int ocfs2_sparse_alloc (int ) ;
 int ocfs2_zero_cluster_pages (struct inode*,scalar_t__,scalar_t__,struct page**,int,scalar_t__,int *) ;

int ocfs2_zero_range_for_truncate(struct inode *inode, handle_t *handle,
      u64 range_start, u64 range_end)
{
 int ret = 0, numpages;
 struct page **pages = ((void*)0);
 u64 phys;
 unsigned int ext_flags;
 struct super_block *sb = inode->i_sb;





 if (!ocfs2_sparse_alloc(OCFS2_SB(sb)))
  return 0;

 pages = kcalloc(ocfs2_pages_per_cluster(sb),
   sizeof(struct page *), GFP_NOFS);
 if (pages == ((void*)0)) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 if (range_start == range_end)
  goto out;

 ret = ocfs2_extent_map_get_blocks(inode,
       range_start >> sb->s_blocksize_bits,
       &phys, ((void*)0), &ext_flags);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }





 if (phys == 0 || ext_flags & OCFS2_EXT_UNWRITTEN)
  goto out;

 ret = ocfs2_grab_eof_pages(inode, range_start, range_end, pages,
       &numpages);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ocfs2_zero_cluster_pages(inode, range_start, range_end, pages,
     numpages, phys, handle);






 ret = do_sync_mapping_range(inode->i_mapping, range_start,
        range_end - 1, SYNC_FILE_RANGE_WRITE);
 if (ret)
  mlog_errno(ret);

out:
 if (pages)
  kfree(pages);

 return ret;
}
