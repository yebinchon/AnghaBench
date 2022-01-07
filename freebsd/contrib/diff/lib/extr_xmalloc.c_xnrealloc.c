
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* xnrealloc_inline (void*,size_t,size_t) ;

void *
xnrealloc (void *p, size_t n, size_t s)
{
  return xnrealloc_inline (p, n, s);
}
