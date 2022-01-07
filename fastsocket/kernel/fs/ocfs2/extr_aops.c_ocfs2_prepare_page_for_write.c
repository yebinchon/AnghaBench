
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct page {int dummy; } ;
struct ocfs2_write_ctxt {struct page* w_target_page; } ;
struct inode {int i_sb; } ;
typedef int loff_t ;


 int BUG_ON (int) ;
 int OCFS2_SB (int ) ;
 int PAGE_CACHE_SIZE ;
 int PageUptodate (struct page*) ;
 int flush_dcache_page (struct page*) ;
 int mlog_errno (int) ;
 int ocfs2_clear_page_regions (struct page*,int ,int ,unsigned int,unsigned int) ;
 int ocfs2_figure_cluster_boundaries (int ,int ,unsigned int*,unsigned int*) ;
 int ocfs2_map_page_blocks (struct page*,int *,struct inode*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int ocfs2_prepare_page_for_write(struct inode *inode, u64 *p_blkno,
     struct ocfs2_write_ctxt *wc,
     struct page *page, u32 cpos,
     loff_t user_pos, unsigned user_len,
     int new)
{
 int ret;
 unsigned int map_from = 0, map_to = 0;
 unsigned int cluster_start, cluster_end;
 unsigned int user_data_from = 0, user_data_to = 0;

 ocfs2_figure_cluster_boundaries(OCFS2_SB(inode->i_sb), cpos,
     &cluster_start, &cluster_end);

 if (page == wc->w_target_page) {
  map_from = user_pos & (PAGE_CACHE_SIZE - 1);
  map_to = map_from + user_len;

  if (new)
   ret = ocfs2_map_page_blocks(page, p_blkno, inode,
          cluster_start, cluster_end,
          new);
  else
   ret = ocfs2_map_page_blocks(page, p_blkno, inode,
          map_from, map_to, new);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  user_data_from = map_from;
  user_data_to = map_to;
  if (new) {
   map_from = cluster_start;
   map_to = cluster_end;
  }
 } else {





  BUG_ON(!new);

  map_from = cluster_start;
  map_to = cluster_end;

  ret = ocfs2_map_page_blocks(page, p_blkno, inode,
         cluster_start, cluster_end, new);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }
 if (new && !PageUptodate(page))
  ocfs2_clear_page_regions(page, OCFS2_SB(inode->i_sb),
      cpos, user_data_from, user_data_to);

 flush_dcache_page(page);

out:
 return ret;
}
