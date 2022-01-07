
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* xnmalloc_inline (size_t,size_t) ;

void *
xnmalloc (size_t n, size_t s)
{
  return xnmalloc_inline (n, s);
}
