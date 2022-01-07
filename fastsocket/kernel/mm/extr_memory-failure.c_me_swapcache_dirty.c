
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageDirty (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 int DELAYED ;
 int FAILED ;
 int delete_from_lru_cache (struct page*) ;

__attribute__((used)) static int me_swapcache_dirty(struct page *p, unsigned long pfn)
{
 ClearPageDirty(p);

 ClearPageUptodate(p);

 if (!delete_from_lru_cache(p))
  return DELAYED;
 else
  return FAILED;
}
