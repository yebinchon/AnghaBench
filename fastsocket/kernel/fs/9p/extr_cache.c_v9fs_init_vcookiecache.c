
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_cookie {int dummy; } ;


 int ENOMEM ;
 int SLAB_MEM_SPREAD ;
 int SLAB_RECLAIM_ACCOUNT ;
 int init_once ;
 int kmem_cache_create (char*,int,int ,int,int ) ;
 int vcookie_cache ;

__attribute__((used)) static int v9fs_init_vcookiecache(void)
{
 vcookie_cache = kmem_cache_create("vcookie_cache",
       sizeof(struct v9fs_cookie),
       0, (SLAB_RECLAIM_ACCOUNT|
           SLAB_MEM_SPREAD),
       init_once);
 if (!vcookie_cache)
  return -ENOMEM;

 return 0;
}
