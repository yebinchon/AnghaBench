
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* xrealloc (void*,size_t) ;

void
grow_vect (void **old_vect, size_t * size, size_t min_size, int element_size)
{
  if (*size < min_size)
    {
      *size *= 2;
      if (*size < min_size)
 *size = min_size;
      *old_vect = xrealloc (*old_vect, *size * element_size);
    }
}
