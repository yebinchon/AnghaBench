
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stub1 (void const*,void const*) ;

void *
bsearch (register const void *key, const void *base0,
         size_t nmemb, register size_t size,
         register int (*compar)(const void *, const void *))
{
 register const char *base = (const char *) base0;
 register int lim, cmp;
 register const void *p;

 for (lim = nmemb; lim != 0; lim >>= 1) {
  p = base + (lim >> 1) * size;
  cmp = (*compar)(key, p);
  if (cmp == 0)
   return (void *)p;
  if (cmp > 0) {
   base = (const char *)p + size;
   lim--;
  }
 }
 return (((void*)0));
}
