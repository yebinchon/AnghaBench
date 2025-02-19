
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 int KM_USER0 ;
 int KM_USER1 ;
 size_t PAGE_CACHE_MASK ;
 size_t PAGE_CACHE_SHIFT ;
 size_t PAGE_CACHE_SIZE ;
 int flush_dcache_page (struct page*) ;
 char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (char*,int ) ;
 int memmove (char*,char*,size_t) ;

__attribute__((used)) static void
_shift_data_right_pages(struct page **pages, size_t pgto_base,
  size_t pgfrom_base, size_t len)
{
 struct page **pgfrom, **pgto;
 char *vfrom, *vto;
 size_t copy;

 BUG_ON(pgto_base <= pgfrom_base);

 pgto_base += len;
 pgfrom_base += len;

 pgto = pages + (pgto_base >> PAGE_CACHE_SHIFT);
 pgfrom = pages + (pgfrom_base >> PAGE_CACHE_SHIFT);

 pgto_base &= ~PAGE_CACHE_MASK;
 pgfrom_base &= ~PAGE_CACHE_MASK;

 do {

  if (pgto_base == 0) {
   pgto_base = PAGE_CACHE_SIZE;
   pgto--;
  }
  if (pgfrom_base == 0) {
   pgfrom_base = PAGE_CACHE_SIZE;
   pgfrom--;
  }

  copy = len;
  if (copy > pgto_base)
   copy = pgto_base;
  if (copy > pgfrom_base)
   copy = pgfrom_base;
  pgto_base -= copy;
  pgfrom_base -= copy;

  vto = kmap_atomic(*pgto, KM_USER0);
  vfrom = kmap_atomic(*pgfrom, KM_USER1);
  memmove(vto + pgto_base, vfrom + pgfrom_base, copy);
  flush_dcache_page(*pgto);
  kunmap_atomic(vfrom, KM_USER1);
  kunmap_atomic(vto, KM_USER0);

 } while ((len -= copy) != 0);
}
