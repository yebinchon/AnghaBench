
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int flags; } ;
struct nameidata {int flags; } ;
struct inode {int i_mode; } ;


 scalar_t__ IS_AUTOMOUNT (struct inode*) ;
 int LOOKUP_OPEN ;
 int LOOKUP_REVAL ;
 int NFS_MOUNT_NOCTO ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int __nfs_revalidate_inode (struct nfs_server*,struct inode*) ;
 scalar_t__ nfs_lookup_check_intent (struct nameidata*,int ) ;
 int nfs_revalidate_inode (struct nfs_server*,struct inode*) ;

__attribute__((used)) static inline
int nfs_lookup_verify_inode(struct inode *inode, struct nameidata *nd)
{
 struct nfs_server *server = NFS_SERVER(inode);

 if (IS_AUTOMOUNT(inode))
  return 0;
 if (nd != ((void*)0)) {

  if (nd->flags & LOOKUP_REVAL)
   goto out_force;

  if (nfs_lookup_check_intent(nd, LOOKUP_OPEN) != 0 &&
    !(server->flags & NFS_MOUNT_NOCTO) &&
    (S_ISREG(inode->i_mode) ||
     S_ISDIR(inode->i_mode)))
   goto out_force;
  return 0;
 }
 return nfs_revalidate_inode(server, inode);
out_force:
 return __nfs_revalidate_inode(server, inode);
}
