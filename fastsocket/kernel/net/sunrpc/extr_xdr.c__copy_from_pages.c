
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int KM_USER0 ;
 size_t PAGE_CACHE_MASK ;
 size_t PAGE_CACHE_SHIFT ;
 size_t PAGE_CACHE_SIZE ;
 char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (char*,int ) ;
 int memcpy (char*,char*,size_t) ;

void
_copy_from_pages(char *p, struct page **pages, size_t pgbase, size_t len)
{
 struct page **pgfrom;
 char *vfrom;
 size_t copy;

 pgfrom = pages + (pgbase >> PAGE_CACHE_SHIFT);
 pgbase &= ~PAGE_CACHE_MASK;

 do {
  copy = PAGE_CACHE_SIZE - pgbase;
  if (copy > len)
   copy = len;

  vfrom = kmap_atomic(*pgfrom, KM_USER0);
  memcpy(p, vfrom + pgbase, copy);
  kunmap_atomic(vfrom, KM_USER0);

  pgbase += copy;
  if (pgbase == PAGE_CACHE_SIZE) {
   pgbase = 0;
   pgfrom++;
  }
  p += copy;

 } while ((len -= copy) != 0);
}
