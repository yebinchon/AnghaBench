
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int callback_data; int (* destructor ) (void*,int ) ;} ;
typedef TYPE_1__ umem_cache_t ;


 int free (void*) ;
 int stub1 (void*,int ) ;

void umem_cache_free(umem_cache_t *cache, void *buffer)
{
 if(cache->destructor != ((void*)0))
  cache->destructor(buffer, cache->callback_data);

 free(buffer);
}
