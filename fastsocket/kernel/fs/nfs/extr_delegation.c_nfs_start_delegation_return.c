
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int dummy; } ;
struct nfs_delegation {int dummy; } ;


 struct nfs_delegation* nfs_start_delegation_return_locked (struct nfs_inode*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct nfs_delegation *
nfs_start_delegation_return(struct nfs_inode *nfsi)
{
 struct nfs_delegation *delegation;

 rcu_read_lock();
 delegation = nfs_start_delegation_return_locked(nfsi);
 rcu_read_unlock();
 return delegation;
}
