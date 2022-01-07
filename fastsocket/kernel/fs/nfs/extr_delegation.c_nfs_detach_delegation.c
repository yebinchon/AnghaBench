
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_inode {int dummy; } ;
struct nfs_delegation {int dummy; } ;
struct nfs_client {int cl_lock; } ;


 struct nfs_delegation* nfs_detach_delegation_locked (struct nfs_inode*,struct nfs_delegation*,struct nfs_client*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs_delegation *nfs_detach_delegation(struct nfs_inode *nfsi,
  struct nfs_delegation *delegation,
  struct nfs_server *server)
{
 struct nfs_client *clp = server->nfs_client;

 spin_lock(&clp->cl_lock);
 delegation = nfs_detach_delegation_locked(nfsi, delegation, clp);
 spin_unlock(&clp->cl_lock);
 return delegation;
}
