
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int vcookie_cache ;

__attribute__((used)) static void v9fs_destroy_vcookiecache(void)
{
 kmem_cache_destroy(vcookie_cache);
}
