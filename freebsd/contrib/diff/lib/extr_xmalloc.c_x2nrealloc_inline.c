
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE_MAX ;
 int xalloc_die () ;
 void* xrealloc (void*,size_t) ;

__attribute__((used)) static inline void *
x2nrealloc_inline (void *p, size_t *pn, size_t s)
{
  size_t n = *pn;

  if (! p)
    {
      if (! n)
 {




   enum { DEFAULT_MXFAST = 64 };

   n = DEFAULT_MXFAST / s;
   n += !n;
 }
    }
  else
    {
      if (SIZE_MAX / 2 / s < n)
 xalloc_die ();
      n *= 2;
    }

  *pn = n;
  return xrealloc (p, n * s);
}
