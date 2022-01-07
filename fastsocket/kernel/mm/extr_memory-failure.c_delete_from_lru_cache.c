
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageActive (struct page*) ;
 int ClearPageUnevictable (struct page*) ;
 int EIO ;
 int isolate_lru_page (struct page*) ;
 int page_cache_release (struct page*) ;

__attribute__((used)) static int delete_from_lru_cache(struct page *p)
{
 if (!isolate_lru_page(p)) {




  ClearPageActive(p);
  ClearPageUnevictable(p);



  page_cache_release(p);
  return 0;
 }
 return -EIO;
}
