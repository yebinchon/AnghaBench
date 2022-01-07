
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umem_cache_t ;


 int free (int *) ;

void umem_cache_destroy(umem_cache_t *cache)
{
 free(cache);
}
