
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 scalar_t__ ONE_FP ;
 int QFQ_MIN_SLOT_SHIFT ;
 int __fls (unsigned long) ;
 int pr_debug (char*,unsigned long,unsigned int,int) ;

__attribute__((used)) static int qfq_calc_index(u32 inv_w, unsigned int maxlen)
{
 u64 slot_size = (u64)maxlen * inv_w;
 unsigned long size_map;
 int index = 0;

 size_map = slot_size >> QFQ_MIN_SLOT_SHIFT;
 if (!size_map)
  goto out;

 index = __fls(size_map) + 1;
 index -= !(slot_size - (1ULL << (index + QFQ_MIN_SLOT_SHIFT - 1)));

 if (index < 0)
  index = 0;
out:
 pr_debug("qfq calc_index: W = %lu, L = %u, I = %d\n",
   (unsigned long) ONE_FP/inv_w, maxlen, index);

 return index;
}
