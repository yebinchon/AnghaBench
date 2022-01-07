
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int cache_validity; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_REVAL_PAGECACHE ;
 scalar_t__ NFS_STALE (struct inode*) ;
 scalar_t__ nfs_attribute_timeout (struct inode*) ;
 scalar_t__ nfs_have_delegated_attributes (struct inode*) ;

__attribute__((used)) static bool nfs_mapping_need_revalidate_inode(struct inode *inode)
{
 if (nfs_have_delegated_attributes(inode))
  return 0;
 return (NFS_I(inode)->cache_validity & NFS_INO_REVAL_PAGECACHE)
  || nfs_attribute_timeout(inode)
  || NFS_STALE(inode);
}
