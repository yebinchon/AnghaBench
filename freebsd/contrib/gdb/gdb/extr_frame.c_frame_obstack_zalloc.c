
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frame_cache_obstack ;
 int memset (void*,int ,unsigned long) ;
 void* obstack_alloc (int *,unsigned long) ;

void *
frame_obstack_zalloc (unsigned long size)
{
  void *data = obstack_alloc (&frame_cache_obstack, size);
  memset (data, 0, size);
  return data;
}
