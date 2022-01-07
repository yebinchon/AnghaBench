
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* x2nrealloc_inline (void*,size_t*,size_t) ;

void *
x2nrealloc (void *p, size_t *pn, size_t s)
{
  return x2nrealloc_inline (p, pn, s);
}
