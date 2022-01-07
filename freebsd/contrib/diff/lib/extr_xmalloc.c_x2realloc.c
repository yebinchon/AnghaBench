
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* x2nrealloc_inline (void*,size_t*,int) ;

void *
x2realloc (void *p, size_t *pn)
{
  return x2nrealloc_inline (p, pn, 1);
}
