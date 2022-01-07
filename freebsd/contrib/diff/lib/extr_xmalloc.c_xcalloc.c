
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;
 int xalloc_die () ;
 scalar_t__ xalloc_oversized (size_t,size_t) ;

void *
xcalloc (size_t n, size_t s)
{
  void *p;


  if (xalloc_oversized (n, s) || ! (p = calloc (n, s)))
    xalloc_die ();
  return p;
}
