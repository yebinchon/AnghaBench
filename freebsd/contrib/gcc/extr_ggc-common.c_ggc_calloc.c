
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ggc_alloc_cleared (size_t) ;

void *
ggc_calloc (size_t s1, size_t s2)
{
  return ggc_alloc_cleared (s1 * s2);
}
