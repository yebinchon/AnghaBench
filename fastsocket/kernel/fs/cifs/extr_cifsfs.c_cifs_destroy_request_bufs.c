
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cifs_req_cachep ;
 int cifs_req_poolp ;
 int cifs_sm_req_cachep ;
 int cifs_sm_req_poolp ;
 int kmem_cache_destroy (int ) ;
 int mempool_destroy (int ) ;

__attribute__((used)) static void
cifs_destroy_request_bufs(void)
{
 mempool_destroy(cifs_req_poolp);
 kmem_cache_destroy(cifs_req_cachep);
 mempool_destroy(cifs_sm_req_poolp);
 kmem_cache_destroy(cifs_sm_req_cachep);
}
