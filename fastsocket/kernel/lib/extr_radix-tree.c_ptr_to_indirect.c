
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RADIX_TREE_INDIRECT_PTR ;

__attribute__((used)) static inline void *ptr_to_indirect(void *ptr)
{
 return (void *)((unsigned long)ptr | RADIX_TREE_INDIRECT_PTR);
}
