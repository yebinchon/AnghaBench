
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int page; } ;
typedef TYPE_1__ ntfs_inode ;


 int BUG () ;
 int BUG_ON (int ) ;
 int atomic_dec_and_test (int *) ;
 int kmem_cache_free (int ,TYPE_1__*) ;
 int ntfs_debug (char*) ;
 int ntfs_inode_cache ;

__attribute__((used)) static void ntfs_destroy_extent_inode(ntfs_inode *ni)
{
 ntfs_debug("Entering.");
 BUG_ON(ni->page);
 if (!atomic_dec_and_test(&ni->count))
  BUG();
 kmem_cache_free(ntfs_inode_cache, ni);
}
