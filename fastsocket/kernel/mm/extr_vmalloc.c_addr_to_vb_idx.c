
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMALLOC_START ;
 int VMAP_BLOCK_SIZE ;

__attribute__((used)) static unsigned long addr_to_vb_idx(unsigned long addr)
{
 addr -= VMALLOC_START & ~(VMAP_BLOCK_SIZE-1);
 addr /= VMAP_BLOCK_SIZE;
 return addr;
}
