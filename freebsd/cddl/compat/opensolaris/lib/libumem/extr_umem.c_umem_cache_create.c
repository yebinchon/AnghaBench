
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int umem_reclaim_t ;
typedef int umem_destructor_t ;
typedef int umem_constructor_t ;
struct TYPE_4__ {size_t bufsize; void* callback_data; int * destructor; int * constructor; } ;
typedef TYPE_1__ umem_cache_t ;


 int assert (int ) ;
 TYPE_1__* malloc (int) ;

umem_cache_t *umem_cache_create(char *debug_name, size_t bufsize, size_t align, umem_constructor_t *constructor, umem_destructor_t *destructor, umem_reclaim_t *reclaim, void *callback_data, void *source, int cflags)
{
 assert(source == ((void*)0));

 umem_cache_t *cache = malloc(sizeof(umem_cache_t));
 if(cache == ((void*)0))
  return ((void*)0);

 cache->constructor = constructor;
 cache->destructor = destructor;
 cache->callback_data = callback_data;
 cache->bufsize = bufsize;

 return cache;
}
