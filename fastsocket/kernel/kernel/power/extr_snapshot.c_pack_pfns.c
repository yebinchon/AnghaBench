
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_bitmap {int dummy; } ;


 unsigned long BM_END_OF_MAP ;
 int PAGE_SIZE ;
 unsigned long memory_bm_next_pfn (struct memory_bitmap*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void
pack_pfns(unsigned long *buf, struct memory_bitmap *bm)
{
 int j;

 for (j = 0; j < PAGE_SIZE / sizeof(long); j++) {
  buf[j] = memory_bm_next_pfn(bm);
  if (unlikely(buf[j] == BM_END_OF_MAP))
   break;
 }
}
