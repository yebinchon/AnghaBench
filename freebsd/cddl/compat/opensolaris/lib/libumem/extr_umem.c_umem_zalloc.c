
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UMEM_DEFAULT ;
 int UMEM_NOFAIL ;
 int abort () ;
 int assert (int) ;
 void* calloc (int,size_t) ;
 int nofail_cb () ;

void *umem_zalloc(size_t size, int flags)
{
 assert(flags == UMEM_DEFAULT || flags == UMEM_NOFAIL);

 if(size == 0)
  return ((void*)0);

 void *ret = calloc(1, size);
 if(ret == ((void*)0)) {
  if(!(flags & UMEM_NOFAIL))
   return ((void*)0);

  if(nofail_cb != ((void*)0))
   nofail_cb();
  abort();
 }

 return ret;
}
