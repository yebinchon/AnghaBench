
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_4__ {struct ocfs2_caching_info* et_ci; } ;
struct ocfs2_cow_context {TYPE_2__* inode; TYPE_1__ data_et; } ;
struct ocfs2_caching_info {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int loff_t ;
typedef int handle_t ;
struct TYPE_6__ {int s_clustersize_bits; } ;
struct TYPE_5__ {struct address_space* i_mapping; } ;


 int BUG_ON (int ) ;
 TYPE_3__* OCFS2_SB (struct super_block*) ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int PageDirty (struct page*) ;
 int PageUptodate (struct page*) ;
 int block_read_full_page (struct page*,int ) ;
 struct page* grab_cache_page (struct address_space*,int) ;
 int lock_page (struct page*) ;
 int mark_page_accessed (struct page*) ;
 int mlog (int ,char*,int,int,int,int) ;
 int mlog_errno (int) ;
 int ocfs2_clear_cow_buffer ;
 int ocfs2_clusters_to_blocks (struct super_block*,int) ;
 int ocfs2_get_block ;
 int ocfs2_map_and_dirty_page (TYPE_2__*,int *,unsigned int,unsigned int,struct page*,int ,int *) ;
 struct super_block* ocfs2_metadata_cache_get_super (struct ocfs2_caching_info*) ;
 int page_buffers (struct page*) ;
 int page_cache_release (struct page*) ;
 scalar_t__ page_has_buffers (struct page*) ;
 int unlock_page (struct page*) ;
 int walk_page_buffers (int *,int ,unsigned int,unsigned int,int*,int ) ;

__attribute__((used)) static int ocfs2_duplicate_clusters_by_page(handle_t *handle,
         struct ocfs2_cow_context *context,
         u32 cpos, u32 old_cluster,
         u32 new_cluster, u32 new_len)
{
 int ret = 0, partial;
 struct ocfs2_caching_info *ci = context->data_et.et_ci;
 struct super_block *sb = ocfs2_metadata_cache_get_super(ci);
 u64 new_block = ocfs2_clusters_to_blocks(sb, new_cluster);
 struct page *page;
 pgoff_t page_index;
 unsigned int from, to;
 loff_t offset, end, map_end;
 struct address_space *mapping = context->inode->i_mapping;

 mlog(0, "old_cluster %u, new %u, len %u at offset %u\n", old_cluster,
      new_cluster, new_len, cpos);

 offset = ((loff_t)cpos) << OCFS2_SB(sb)->s_clustersize_bits;
 end = offset + (new_len << OCFS2_SB(sb)->s_clustersize_bits);

 while (offset < end) {
  page_index = offset >> PAGE_CACHE_SHIFT;
  map_end = (page_index + 1) << PAGE_CACHE_SHIFT;
  if (map_end > end)
   map_end = end;


  from = offset & (PAGE_CACHE_SIZE - 1);
  to = PAGE_CACHE_SIZE;
  if (map_end & (PAGE_CACHE_SIZE - 1))
   to = map_end & (PAGE_CACHE_SIZE - 1);

  page = grab_cache_page(mapping, page_index);


  BUG_ON(PageDirty(page));

  if (!PageUptodate(page)) {
   ret = block_read_full_page(page, ocfs2_get_block);
   if (ret) {
    mlog_errno(ret);
    goto unlock;
   }
   lock_page(page);
  }

  if (page_has_buffers(page)) {
   ret = walk_page_buffers(handle, page_buffers(page),
      from, to, &partial,
      ocfs2_clear_cow_buffer);
   if (ret) {
    mlog_errno(ret);
    goto unlock;
   }
  }

  ocfs2_map_and_dirty_page(context->inode,
      handle, from, to,
      page, 0, &new_block);
  mark_page_accessed(page);
unlock:
  unlock_page(page);
  page_cache_release(page);
  page = ((void*)0);
  offset = map_end;
  if (ret)
   break;
 }

 return ret;
}
