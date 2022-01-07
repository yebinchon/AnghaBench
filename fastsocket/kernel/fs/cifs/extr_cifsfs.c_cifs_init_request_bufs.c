
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIFSMaxBufSize ;
 int ENOMEM ;
 scalar_t__ MAX_CIFS_HDR_SIZE ;
 scalar_t__ MAX_CIFS_SMALL_BUFFER_SIZE ;
 int SLAB_HWCACHE_ALIGN ;
 int cERROR (int,char*) ;
 int cFYI (int,char*) ;
 int cifs_min_rcv ;
 int cifs_min_small ;
 int * cifs_req_cachep ;
 int * cifs_req_poolp ;
 int * cifs_sm_req_cachep ;
 int * cifs_sm_req_poolp ;
 int * kmem_cache_create (char*,scalar_t__,int ,int ,int *) ;
 int kmem_cache_destroy (int *) ;
 void* mempool_create_slab_pool (int,int *) ;
 int mempool_destroy (int *) ;

__attribute__((used)) static int
cifs_init_request_bufs(void)
{
 if (CIFSMaxBufSize < 8192) {


  CIFSMaxBufSize = 8192;
 } else if (CIFSMaxBufSize > 1024*127) {
  CIFSMaxBufSize = 1024 * 127;
 } else {
  CIFSMaxBufSize &= 0x1FE00;
 }

 cifs_req_cachep = kmem_cache_create("cifs_request",
         CIFSMaxBufSize +
         MAX_CIFS_HDR_SIZE, 0,
         SLAB_HWCACHE_ALIGN, ((void*)0));
 if (cifs_req_cachep == ((void*)0))
  return -ENOMEM;

 if (cifs_min_rcv < 1)
  cifs_min_rcv = 1;
 else if (cifs_min_rcv > 64) {
  cifs_min_rcv = 64;
  cERROR(1, "cifs_min_rcv set to maximum (64)");
 }

 cifs_req_poolp = mempool_create_slab_pool(cifs_min_rcv,
        cifs_req_cachep);

 if (cifs_req_poolp == ((void*)0)) {
  kmem_cache_destroy(cifs_req_cachep);
  return -ENOMEM;
 }
 cifs_sm_req_cachep = kmem_cache_create("cifs_small_rq",
   MAX_CIFS_SMALL_BUFFER_SIZE, 0, SLAB_HWCACHE_ALIGN,
   ((void*)0));
 if (cifs_sm_req_cachep == ((void*)0)) {
  mempool_destroy(cifs_req_poolp);
  kmem_cache_destroy(cifs_req_cachep);
  return -ENOMEM;
 }

 if (cifs_min_small < 2)
  cifs_min_small = 2;
 else if (cifs_min_small > 256) {
  cifs_min_small = 256;
  cFYI(1, "cifs_min_small set to maximum (256)");
 }

 cifs_sm_req_poolp = mempool_create_slab_pool(cifs_min_small,
           cifs_sm_req_cachep);

 if (cifs_sm_req_poolp == ((void*)0)) {
  mempool_destroy(cifs_req_poolp);
  kmem_cache_destroy(cifs_req_cachep);
  kmem_cache_destroy(cifs_sm_req_cachep);
  return -ENOMEM;
 }

 return 0;
}
