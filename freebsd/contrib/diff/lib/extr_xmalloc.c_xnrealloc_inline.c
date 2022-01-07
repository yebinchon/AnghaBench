
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* realloc (void*,size_t) ;
 int xalloc_die () ;
 scalar_t__ xalloc_oversized (size_t,size_t) ;

__attribute__((used)) static inline void *
xnrealloc_inline (void *p, size_t n, size_t s)
{
  if (xalloc_oversized (n, s) || ! (p = realloc (p, n * s)))
    xalloc_die ();
  return p;
}
