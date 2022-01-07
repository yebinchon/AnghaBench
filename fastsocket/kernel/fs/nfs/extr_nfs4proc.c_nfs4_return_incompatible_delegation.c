
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_delegation {int type; } ;
struct inode {int dummy; } ;
typedef int fmode_t ;
struct TYPE_2__ {int delegation; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int nfs_inode_return_delegation (struct inode*) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void nfs4_return_incompatible_delegation(struct inode *inode, fmode_t fmode)
{
 struct nfs_delegation *delegation;

 rcu_read_lock();
 delegation = rcu_dereference(NFS_I(inode)->delegation);
 if (delegation == ((void*)0) || (delegation->type & fmode) == fmode) {
  rcu_read_unlock();
  return;
 }
 rcu_read_unlock();
 nfs_inode_return_delegation(inode);
}
