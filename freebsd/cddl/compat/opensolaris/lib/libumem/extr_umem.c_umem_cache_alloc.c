
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* constructor ) (void*,int ,int) ;int callback_data; int bufsize; } ;
typedef TYPE_1__ umem_cache_t ;


 int UMEM_NOFAIL ;
 int abort () ;
 int free (void*) ;
 void* malloc (int ) ;
 int nofail_cb () ;
 scalar_t__ stub1 (void*,int ,int) ;

void *umem_cache_alloc(umem_cache_t *cache, int flags)
{
 void *buf = malloc(cache->bufsize);
 if(buf == ((void*)0)) {
  if(!(flags & UMEM_NOFAIL))
   return ((void*)0);

  if(nofail_cb != ((void*)0))
   nofail_cb();
  abort();
 }

 if(cache->constructor != ((void*)0)) {
  if(cache->constructor(buf, cache->callback_data, flags) != 0) {
   free(buf);
   if(!(flags & UMEM_NOFAIL))
    return ((void*)0);

   if(nofail_cb != ((void*)0))
    nofail_cb();
   abort();
  }
 }

 return buf;
}
