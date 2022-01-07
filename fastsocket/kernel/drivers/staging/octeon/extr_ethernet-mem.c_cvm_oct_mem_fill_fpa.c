
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ USE_SKBUFFS_IN_HW ;
 int cvm_oct_fill_hw_memory (int,int,int) ;
 int cvm_oct_fill_hw_skbuff (int,int,int) ;

int cvm_oct_mem_fill_fpa(int pool, int size, int elements)
{
 int freed;
 if (USE_SKBUFFS_IN_HW)
  freed = cvm_oct_fill_hw_skbuff(pool, size, elements);
 else
  freed = cvm_oct_fill_hw_memory(pool, size, elements);
 return freed;
}
