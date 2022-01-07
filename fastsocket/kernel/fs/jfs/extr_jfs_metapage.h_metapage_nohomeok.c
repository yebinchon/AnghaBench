
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct metapage {int nohomeok; struct page* page; } ;


 int lock_page (struct page*) ;
 int mark_metapage_dirty (struct metapage*) ;
 int page_cache_get (struct page*) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static inline void metapage_nohomeok(struct metapage *mp)
{
 struct page *page = mp->page;
 lock_page(page);
 if (!mp->nohomeok++) {
  mark_metapage_dirty(mp);
  page_cache_get(page);
  wait_on_page_writeback(page);
 }
 unlock_page(page);
}
