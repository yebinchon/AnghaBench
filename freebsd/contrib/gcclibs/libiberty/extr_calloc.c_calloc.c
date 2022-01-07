
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PTR ;


 int bzero (scalar_t__,size_t) ;
 scalar_t__ malloc (size_t) ;

PTR
calloc (size_t nelem, size_t elsize)
{
  register PTR ptr;

  if (nelem == 0 || elsize == 0)
    nelem = elsize = 1;

  ptr = malloc (nelem * elsize);
  if (ptr) bzero (ptr, nelem * elsize);

  return ptr;
}
