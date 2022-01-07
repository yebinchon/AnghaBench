
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gomp_fatal (char*,unsigned long) ;
 void* malloc (size_t) ;

void *
gomp_malloc (size_t size)
{
  void *ret = malloc (size);
  if (ret == ((void*)0))
    gomp_fatal ("Out of memory allocating %lu bytes", (unsigned long) size);
  return ret;
}
