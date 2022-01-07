
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int cache_validity; } ;


 int ESTALE ;
 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ATTR ;
 scalar_t__ NFS_STALE (struct inode*) ;
 int __nfs_revalidate_inode (struct nfs_server*,struct inode*) ;
 int nfs_attribute_cache_expired (struct inode*) ;

int nfs_revalidate_inode(struct nfs_server *server, struct inode *inode)
{
 if (!(NFS_I(inode)->cache_validity & NFS_INO_INVALID_ATTR)
   && !nfs_attribute_cache_expired(inode))
  return NFS_STALE(inode) ? -ESTALE : 0;
 return __nfs_revalidate_inode(server, inode);
}
