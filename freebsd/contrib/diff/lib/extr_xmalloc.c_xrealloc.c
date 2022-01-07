
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* xnrealloc_inline (void*,size_t,int) ;

void *
xrealloc (void *p, size_t n)
{
  return xnrealloc_inline (p, n, 1);
}
