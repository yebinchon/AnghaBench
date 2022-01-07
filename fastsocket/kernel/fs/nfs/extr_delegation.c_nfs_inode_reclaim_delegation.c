
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
struct nfs_openres {int maxsize; int delegation_type; int delegation; } ;
struct nfs_delegation {int lock; int type; int flags; struct rpc_cred* cred; int maxsize; int stateid; int * inode; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int delegation_state; int delegation; } ;


 int NFS_DELEGATION_NEED_RECLAIM ;
 TYPE_1__* NFS_I (struct inode*) ;
 int clear_bit (int ,int *) ;
 struct rpc_cred* get_rpccred (struct rpc_cred*) ;
 int nfs4_stateid_copy (int *,int *) ;
 int nfs_inode_set_delegation (struct inode*,struct rpc_cred*,struct nfs_openres*) ;
 int put_rpccred (struct rpc_cred*) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_inode_reclaim_delegation(struct inode *inode, struct rpc_cred *cred,
      struct nfs_openres *res)
{
 struct nfs_delegation *delegation;
 struct rpc_cred *oldcred = ((void*)0);

 rcu_read_lock();
 delegation = rcu_dereference(NFS_I(inode)->delegation);
 if (delegation != ((void*)0)) {
  spin_lock(&delegation->lock);
  if (delegation->inode != ((void*)0)) {
   nfs4_stateid_copy(&delegation->stateid, &res->delegation);
   delegation->type = res->delegation_type;
   delegation->maxsize = res->maxsize;
   oldcred = delegation->cred;
   delegation->cred = get_rpccred(cred);
   clear_bit(NFS_DELEGATION_NEED_RECLAIM,
      &delegation->flags);
   NFS_I(inode)->delegation_state = delegation->type;
   spin_unlock(&delegation->lock);
   put_rpccred(oldcred);
   rcu_read_unlock();
  } else {

   spin_unlock(&delegation->lock);
   rcu_read_unlock();
   nfs_inode_set_delegation(inode, cred, res);
  }
 } else {
  rcu_read_unlock();
 }
}
