
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {scalar_t__ index; } ;
struct mpage_da_data {scalar_t__ next_page; scalar_t__ first_page; scalar_t__ b_size; int b_state; scalar_t__ io_done; scalar_t__ b_blocknr; struct inode* inode; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {int b_state; int b_size; struct buffer_head* b_this_page; } ;
typedef int sector_t ;


 int BH_Dirty ;
 int BH_FLAGS ;
 int BH_Uptodate ;
 int BUG_ON (int ) ;
 int MPAGE_DA_EXTENT_TAIL ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int buffer_locked (struct buffer_head*) ;
 scalar_t__ buffer_mapped (struct buffer_head*) ;
 scalar_t__ ext4_bh_delay_or_unwritten (int *,struct buffer_head*) ;
 int mpage_add_bh_to_extent (struct mpage_da_data*,int,int ,int) ;
 int mpage_da_map_and_submit (struct mpage_da_data*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int __mpage_da_writepage(struct page *page,
    struct writeback_control *wbc, void *data)
{
 struct mpage_da_data *mpd = data;
 struct inode *inode = mpd->inode;
 struct buffer_head *bh, *head;
 sector_t logical;




 if (mpd->next_page != page->index) {




  if (mpd->next_page != mpd->first_page) {
   mpage_da_map_and_submit(mpd);



   redirty_page_for_writepage(wbc, page);
   unlock_page(page);
   return MPAGE_DA_EXTENT_TAIL;
  }




  mpd->first_page = page->index;




  mpd->b_size = 0;
  mpd->b_state = 0;
  mpd->b_blocknr = 0;
 }

 mpd->next_page = page->index + 1;
 logical = (sector_t) page->index <<
    (PAGE_CACHE_SHIFT - inode->i_blkbits);

 if (!page_has_buffers(page)) {
  mpage_add_bh_to_extent(mpd, logical, PAGE_CACHE_SIZE,
           (1 << BH_Dirty) | (1 << BH_Uptodate));
  if (mpd->io_done)
   return MPAGE_DA_EXTENT_TAIL;
 } else {



  head = page_buffers(page);
  bh = head;
  do {
   BUG_ON(buffer_locked(bh));






   if (ext4_bh_delay_or_unwritten(((void*)0), bh)) {
    mpage_add_bh_to_extent(mpd, logical,
             bh->b_size,
             bh->b_state);
    if (mpd->io_done)
     return MPAGE_DA_EXTENT_TAIL;
   } else if (buffer_dirty(bh) && (buffer_mapped(bh))) {
    if (mpd->b_size == 0)
     mpd->b_state = bh->b_state & BH_FLAGS;
   }
   logical++;
  } while ((bh = bh->b_this_page) != head);
 }

 return 0;
}
