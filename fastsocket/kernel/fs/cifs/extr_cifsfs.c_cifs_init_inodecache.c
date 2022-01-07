
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsInodeInfo {int dummy; } ;


 int ENOMEM ;
 int SLAB_MEM_SPREAD ;
 int SLAB_RECLAIM_ACCOUNT ;
 int cifs_init_once ;
 int * cifs_inode_cachep ;
 int * kmem_cache_create (char*,int,int ,int,int ) ;

__attribute__((used)) static int
cifs_init_inodecache(void)
{
 cifs_inode_cachep = kmem_cache_create("cifs_inode_cache",
           sizeof(struct cifsInodeInfo),
           0, (SLAB_RECLAIM_ACCOUNT|
      SLAB_MEM_SPREAD),
           cifs_init_once);
 if (cifs_inode_cachep == ((void*)0))
  return -ENOMEM;

 return 0;
}
