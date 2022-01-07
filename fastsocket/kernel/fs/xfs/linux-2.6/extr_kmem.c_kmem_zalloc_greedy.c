
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* kmem_zalloc_large (size_t) ;

void *
kmem_zalloc_greedy(size_t *size, size_t minsize, size_t maxsize)
{
 void *ptr;
 size_t kmsize = maxsize;

 while (!(ptr = kmem_zalloc_large(kmsize))) {
  if ((kmsize >>= 1) <= minsize)
   kmsize = minsize;
 }
 if (ptr)
  *size = kmsize;
 return ptr;
}
