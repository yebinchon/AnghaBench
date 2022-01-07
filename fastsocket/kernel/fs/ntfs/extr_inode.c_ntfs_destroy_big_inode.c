
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {int count; int page; } ;
typedef TYPE_1__ ntfs_inode ;


 int BUG () ;
 int BUG_ON (int ) ;
 TYPE_1__* NTFS_I (struct inode*) ;
 int atomic_dec_and_test (int *) ;
 int kmem_cache_free (int ,TYPE_1__*) ;
 int ntfs_big_inode_cache ;
 int ntfs_debug (char*) ;

void ntfs_destroy_big_inode(struct inode *inode)
{
 ntfs_inode *ni = NTFS_I(inode);

 ntfs_debug("Entering.");
 BUG_ON(ni->page);
 if (!atomic_dec_and_test(&ni->count))
  BUG();
 kmem_cache_free(ntfs_big_inode_cache, NTFS_I(inode));
}
