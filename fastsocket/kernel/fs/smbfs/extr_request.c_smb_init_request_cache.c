
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_request {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int SMB_SLAB_DEBUG ;
 int * kmem_cache_create (char*,int,int ,int,int *) ;
 int * req_cachep ;

int smb_init_request_cache(void)
{
 req_cachep = kmem_cache_create("smb_request",
           sizeof(struct smb_request), 0,
           SMB_SLAB_DEBUG | SLAB_HWCACHE_ALIGN,
           ((void*)0));
 if (req_cachep == ((void*)0))
  return -ENOMEM;

 return 0;
}
