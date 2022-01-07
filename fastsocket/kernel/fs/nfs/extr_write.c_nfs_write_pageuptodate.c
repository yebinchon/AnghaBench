
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int cache_validity; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_DATA ;
 int NFS_INO_REVAL_PAGECACHE ;
 scalar_t__ PageUptodate (struct page*) ;
 scalar_t__ nfs_have_delegated_attributes (struct inode*) ;

__attribute__((used)) static bool nfs_write_pageuptodate(struct page *page, struct inode *inode)
{
 if (nfs_have_delegated_attributes(inode))
  goto out;
 if (NFS_I(inode)->cache_validity & (NFS_INO_INVALID_DATA|NFS_INO_REVAL_PAGECACHE))
  return 0;
out:
 return PageUptodate(page) != 0;
}
