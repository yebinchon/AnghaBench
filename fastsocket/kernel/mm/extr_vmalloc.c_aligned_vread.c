
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int KM_USER0 ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 int memcpy (char*,void*,unsigned long) ;
 int memset (char*,int ,unsigned long) ;
 struct page* vmalloc_to_page (char*) ;

__attribute__((used)) static int aligned_vread(char *buf, char *addr, unsigned long count)
{
 struct page *p;
 int copied = 0;

 while (count) {
  unsigned long offset, length;

  offset = (unsigned long)addr & ~PAGE_MASK;
  length = PAGE_SIZE - offset;
  if (length > count)
   length = count;
  p = vmalloc_to_page(addr);







  if (p) {




   void *map = kmap_atomic(p, KM_USER0);
   memcpy(buf, map + offset, length);
   kunmap_atomic(map, KM_USER0);
  } else
   memset(buf, 0, length);

  addr += length;
  buf += length;
  copied += length;
  count -= length;
 }
 return copied;
}
