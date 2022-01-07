
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 unsigned int PAGE_SIZE ;
 void* kmalloc (unsigned int,int ) ;
 void* vmalloc (unsigned int) ;

__attribute__((used)) static inline void * alloc_fdmem(unsigned int size)
{
 if (size <= PAGE_SIZE)
  return kmalloc(size, GFP_KERNEL);
 else
  return vmalloc(size);
}
