
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct metapage {int flag; struct page* page; } ;


 int META_forcewrite ;
 int META_sync ;
 int clear_bit (int ,int *) ;
 int jfs_info (char*,struct metapage*) ;
 int lock_page (struct page*) ;
 int page_cache_get (struct page*) ;
 int page_cache_release (struct page*) ;
 int set_bit (int ,int *) ;
 int set_page_dirty (struct page*) ;
 int write_one_page (struct page*,int) ;

void force_metapage(struct metapage *mp)
{
 struct page *page = mp->page;
 jfs_info("force_metapage: mp = 0x%p", mp);
 set_bit(META_forcewrite, &mp->flag);
 clear_bit(META_sync, &mp->flag);
 page_cache_get(page);
 lock_page(page);
 set_page_dirty(page);
 write_one_page(page, 1);
 clear_bit(META_forcewrite, &mp->flag);
 page_cache_release(page);
}
