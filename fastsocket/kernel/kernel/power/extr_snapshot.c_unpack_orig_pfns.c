
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_bitmap {int dummy; } ;


 unsigned long BM_END_OF_MAP ;
 int EFAULT ;
 int PAGE_SIZE ;
 scalar_t__ memory_bm_pfn_present (struct memory_bitmap*,unsigned long) ;
 int memory_bm_set_bit (struct memory_bitmap*,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int unpack_orig_pfns(unsigned long *buf, struct memory_bitmap *bm)
{
 int j;

 for (j = 0; j < PAGE_SIZE / sizeof(long); j++) {
  if (unlikely(buf[j] == BM_END_OF_MAP))
   break;

  if (memory_bm_pfn_present(bm, buf[j]))
   memory_bm_set_bit(bm, buf[j]);
  else
   return -EFAULT;
 }

 return 0;
}
