
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_bitmap {int dummy; } ;


 int memory_bm_find_bit (struct memory_bitmap*,unsigned long,void**,unsigned int*) ;

__attribute__((used)) static bool memory_bm_pfn_present(struct memory_bitmap *bm, unsigned long pfn)
{
 void *addr;
 unsigned int bit;

 return !memory_bm_find_bit(bm, pfn, &addr, &bit);
}
