
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef int isolate_mode_t ;
struct TYPE_2__ {int migratepage; } ;


 int ClearPageLRU (struct page*) ;
 int EBUSY ;
 int EINVAL ;
 int ISOLATE_ACTIVE ;
 int ISOLATE_ASYNC_MIGRATE ;
 int ISOLATE_CLEAN ;
 int ISOLATE_INACTIVE ;
 int PageActive (struct page*) ;
 scalar_t__ PageDirty (struct page*) ;
 int PageLRU (struct page*) ;
 scalar_t__ PageUnevictable (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int get_page_unless_zero (struct page*) ;
 scalar_t__ likely (int ) ;
 int page_is_file_cache (struct page*) ;
 struct address_space* page_mapping (struct page*) ;

int __isolate_lru_page(struct page *page, isolate_mode_t mode, int file)
{
 bool all_lru_mode;
 int ret = -EINVAL;


 if (!PageLRU(page))
  return ret;

 all_lru_mode = (mode & (ISOLATE_ACTIVE|ISOLATE_INACTIVE)) ==
  (ISOLATE_ACTIVE|ISOLATE_INACTIVE);






 if (!all_lru_mode && !PageActive(page) != !(mode & ISOLATE_ACTIVE))
  return ret;

 if (!all_lru_mode && !!page_is_file_cache(page) != file)
  return ret;






 if (PageUnevictable(page))
  return ret;

 ret = -EBUSY;
 if (mode & (ISOLATE_CLEAN|ISOLATE_ASYNC_MIGRATE)) {

  if (PageWriteback(page))
   return ret;

  if (PageDirty(page)) {
   struct address_space *mapping;


   if (mode & ISOLATE_CLEAN)
    return ret;






   mapping = page_mapping(page);
   if (mapping && !mapping->a_ops->migratepage)
    return ret;
  }
 }

 if (likely(get_page_unless_zero(page))) {





  ClearPageLRU(page);
  ret = 0;
 }

 return ret;
}
