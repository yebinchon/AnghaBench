
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (int,size_t) ;
 int gomp_fatal (char*,unsigned long) ;

void *
gomp_malloc_cleared (size_t size)
{
  void *ret = calloc (1, size);
  if (ret == ((void*)0))
    gomp_fatal ("Out of memory allocating %lu bytes", (unsigned long) size);
  return ret;
}
