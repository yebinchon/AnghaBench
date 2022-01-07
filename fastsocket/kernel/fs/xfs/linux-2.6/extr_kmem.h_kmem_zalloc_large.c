
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int ,size_t) ;
 void* vmalloc (size_t) ;

__attribute__((used)) static inline void *kmem_zalloc_large(size_t size)
{
 void *ptr;

 ptr = vmalloc(size);
 if (ptr)
  memset(ptr, 0, size);
 return ptr;
}
