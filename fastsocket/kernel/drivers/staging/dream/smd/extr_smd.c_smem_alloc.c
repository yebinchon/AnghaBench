
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* smem_find (unsigned int,unsigned int) ;

void *smem_alloc(unsigned id, unsigned size)
{
 return smem_find(id, size);
}
