
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTR ;


 int calloc (size_t,size_t) ;
 int xmalloc_failed (size_t) ;

PTR
xcalloc (size_t nelem, size_t elsize)
{
  PTR newmem;

  if (nelem == 0 || elsize == 0)
    nelem = elsize = 1;

  newmem = calloc (nelem, elsize);
  if (!newmem)
    xmalloc_failed (nelem * elsize);

  return (newmem);
}
