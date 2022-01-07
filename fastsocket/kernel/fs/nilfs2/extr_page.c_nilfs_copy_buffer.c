
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct buffer_head {int b_state; struct buffer_head* b_this_page; int b_bdev; int b_blocknr; int b_size; struct page* b_page; } ;


 unsigned long BH_Mapped ;
 unsigned long BH_Uptodate ;
 int ClearPageMappedToDisk (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 int KM_USER0 ;
 int KM_USER1 ;
 int NILFS_BUFFER_INHERENT_BITS ;
 int SetPageMappedToDisk (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int bh_offset (struct buffer_head*) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 int lock_buffer (struct buffer_head*) ;
 int memcpy (void*,void*,int ) ;
 int unlock_buffer (struct buffer_head*) ;

void nilfs_copy_buffer(struct buffer_head *dbh, struct buffer_head *sbh)
{
 void *kaddr0, *kaddr1;
 unsigned long bits;
 struct page *spage = sbh->b_page, *dpage = dbh->b_page;
 struct buffer_head *bh;

 kaddr0 = kmap_atomic(spage, KM_USER0);
 kaddr1 = kmap_atomic(dpage, KM_USER1);
 memcpy(kaddr1 + bh_offset(dbh), kaddr0 + bh_offset(sbh), sbh->b_size);
 kunmap_atomic(kaddr1, KM_USER1);
 kunmap_atomic(kaddr0, KM_USER0);

 dbh->b_state = sbh->b_state & NILFS_BUFFER_INHERENT_BITS;
 dbh->b_blocknr = sbh->b_blocknr;
 dbh->b_bdev = sbh->b_bdev;

 bh = dbh;
 bits = sbh->b_state & ((1UL << BH_Uptodate) | (1UL << BH_Mapped));
 while ((bh = bh->b_this_page) != dbh) {
  lock_buffer(bh);
  bits &= bh->b_state;
  unlock_buffer(bh);
 }
 if (bits & (1UL << BH_Uptodate))
  SetPageUptodate(dpage);
 else
  ClearPageUptodate(dpage);
 if (bits & (1UL << BH_Mapped))
  SetPageMappedToDisk(dpage);
 else
  ClearPageMappedToDisk(dpage);
}
