
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int delegation; } ;
struct nfs_delegation {int lock; int flags; } ;


 int NFS_DELEGATION_RETURNING ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static struct nfs_delegation *
nfs_start_delegation_return_locked(struct nfs_inode *nfsi)
{
 struct nfs_delegation *ret = ((void*)0);
 struct nfs_delegation *delegation = rcu_dereference(nfsi->delegation);

 if (delegation == ((void*)0))
  goto out;
 spin_lock(&delegation->lock);
 if (!test_and_set_bit(NFS_DELEGATION_RETURNING, &delegation->flags))
  ret = delegation;
 spin_unlock(&delegation->lock);
out:
 return ret;
}
