
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* xnmalloc_inline (size_t,int) ;

void *
xmalloc (size_t n)
{
  return xnmalloc_inline (n, 1);
}
