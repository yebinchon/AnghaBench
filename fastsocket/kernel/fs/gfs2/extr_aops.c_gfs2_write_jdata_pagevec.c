
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; scalar_t__ nr_to_write; int encountered_congestion; scalar_t__ nonblocking; int range_cyclic; } ;
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct inode {TYPE_1__* i_sb; } ;
struct gfs2_sbd {int dummy; } ;
struct backing_dev_info {int dummy; } ;
struct address_space {TYPE_2__* a_ops; struct backing_dev_info* backing_dev_info; struct inode* host; } ;
typedef scalar_t__ pgoff_t ;
typedef int loff_t ;
struct TYPE_4__ {int (* invalidatepage ) (struct page*,int ) ;} ;
struct TYPE_3__ {int s_blocksize; } ;


 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ PageWriteback (struct page*) ;
 scalar_t__ WB_SYNC_NONE ;
 int __gfs2_jdata_writepage (struct page*,struct writeback_control*) ;
 scalar_t__ bdi_write_congested (struct backing_dev_info*) ;
 int clear_page_dirty_for_io (struct page*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,unsigned int,unsigned int) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int i_size_read (struct inode*) ;
 int lock_page (struct page*) ;
 int stub1 (struct page*,int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int gfs2_write_jdata_pagevec(struct address_space *mapping,
        struct writeback_control *wbc,
        struct pagevec *pvec,
        int nr_pages, pgoff_t end)
{
 struct inode *inode = mapping->host;
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 loff_t i_size = i_size_read(inode);
 pgoff_t end_index = i_size >> PAGE_CACHE_SHIFT;
 unsigned offset = i_size & (PAGE_CACHE_SIZE-1);
 unsigned nrblocks = nr_pages * (PAGE_CACHE_SIZE/inode->i_sb->s_blocksize);
 struct backing_dev_info *bdi = mapping->backing_dev_info;
 int i;
 int ret;

 ret = gfs2_trans_begin(sdp, nrblocks, nrblocks);
 if (ret < 0)
  return ret;

 for(i = 0; i < nr_pages; i++) {
  struct page *page = pvec->pages[i];

  lock_page(page);

  if (unlikely(page->mapping != mapping)) {
   unlock_page(page);
   continue;
  }

  if (!wbc->range_cyclic && page->index > end) {
   ret = 1;
   unlock_page(page);
   continue;
  }

  if (wbc->sync_mode != WB_SYNC_NONE)
   wait_on_page_writeback(page);

  if (PageWriteback(page) ||
      !clear_page_dirty_for_io(page)) {
   unlock_page(page);
   continue;
  }


  if (page->index > end_index || (page->index == end_index && !offset)) {
   page->mapping->a_ops->invalidatepage(page, 0);
   unlock_page(page);
   continue;
  }

  ret = __gfs2_jdata_writepage(page, wbc);

  if (ret || (--(wbc->nr_to_write) <= 0))
   ret = 1;
  if (wbc->nonblocking && bdi_write_congested(bdi)) {
   wbc->encountered_congestion = 1;
   ret = 1;
  }

 }
 gfs2_trans_end(sdp);
 return ret;
}
