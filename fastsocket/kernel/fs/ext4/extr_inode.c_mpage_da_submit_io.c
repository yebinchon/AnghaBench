
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pagevec {struct page** pages; } ;
struct page {unsigned long index; } ;
struct mpage_da_data {unsigned long next_page; unsigned long first_page; int pages_written; TYPE_1__* wbc; struct inode* inode; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {long pages_skipped; } ;


 int BUG_ON (int) ;
 int PAGEVEC_SIZE ;
 int PageLocked (struct page*) ;
 int PageWriteback (struct page*) ;
 int ext4_writepage (struct page*,TYPE_1__*) ;
 int pagevec_init (struct pagevec*,int ) ;
 int pagevec_lookup (struct pagevec*,struct address_space*,unsigned long,int ) ;
 int pagevec_release (struct pagevec*) ;

__attribute__((used)) static int mpage_da_submit_io(struct mpage_da_data *mpd)
{
 long pages_skipped;
 struct pagevec pvec;
 unsigned long index, end;
 int ret = 0, err, nr_pages, i;
 struct inode *inode = mpd->inode;
 struct address_space *mapping = inode->i_mapping;

 BUG_ON(mpd->next_page <= mpd->first_page);






 index = mpd->first_page;
 end = mpd->next_page - 1;

 pagevec_init(&pvec, 0);
 while (index <= end) {
  nr_pages = pagevec_lookup(&pvec, mapping, index, PAGEVEC_SIZE);
  if (nr_pages == 0)
   break;
  for (i = 0; i < nr_pages; i++) {
   struct page *page = pvec.pages[i];

   index = page->index;
   if (index > end)
    break;
   index++;

   BUG_ON(!PageLocked(page));
   BUG_ON(PageWriteback(page));

   pages_skipped = mpd->wbc->pages_skipped;
   err = ext4_writepage(page, mpd->wbc);
   if (!err && (pages_skipped == mpd->wbc->pages_skipped))




    mpd->pages_written++;





   if (ret == 0)
    ret = err;
  }
  pagevec_release(&pvec);
 }
 return ret;
}
