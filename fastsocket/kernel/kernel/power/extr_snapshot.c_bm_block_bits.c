
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_block {unsigned long end_pfn; unsigned long start_pfn; } ;



__attribute__((used)) static inline unsigned long bm_block_bits(struct bm_block *bb)
{
 return bb->end_pfn - bb->start_pfn;
}
