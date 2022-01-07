
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* obstack_alloc (int *,size_t) ;
 int stat_obstack ;

void *
stat_alloc (size_t size)
{
  return obstack_alloc (&stat_obstack, size);
}
