
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
typedef struct page* (* new_page_t ) (struct page*,unsigned long,int**) ;
typedef enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;


 int EAGAIN ;
 int ENOMEM ;
 scalar_t__ NR_ISOLATED_ANON ;
 int PageTransHuge (struct page*) ;
 int __unmap_and_move (struct page*,struct page*,int,int,int) ;
 int dec_zone_page_state (struct page*,scalar_t__) ;
 int list_del (int *) ;
 int page_count (struct page*) ;
 scalar_t__ page_is_file_cache (struct page*) ;
 int page_to_nid (struct page*) ;
 int putback_lru_page (struct page*) ;
 int split_huge_page (struct page*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int unmap_and_move(new_page_t get_new_page, unsigned long private,
   struct page *page, int force, bool offlining,
   enum migrate_mode mode)
{
 int rc = 0;
 int *result = ((void*)0);
 struct page *newpage = get_new_page(page, private, &result);

 if (!newpage)
  return -ENOMEM;

 if (page_count(page) == 1) {

  goto out;
 }

 if (unlikely(PageTransHuge(page)))
  if (unlikely(split_huge_page(page)))
   goto out;

 rc = __unmap_and_move(page, newpage, force, offlining, mode);
out:
 if (rc != -EAGAIN) {






   list_del(&page->lru);
  dec_zone_page_state(page, NR_ISOLATED_ANON +
    page_is_file_cache(page));
  putback_lru_page(page);
 }




 putback_lru_page(newpage);
 if (result) {
  if (rc)
   *result = rc;
  else
   *result = page_to_nid(newpage);
 }
 return rc;
}
