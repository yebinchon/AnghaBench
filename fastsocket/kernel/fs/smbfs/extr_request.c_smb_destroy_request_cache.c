
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int req_cachep ;

void smb_destroy_request_cache(void)
{
 kmem_cache_destroy(req_cachep);
}
