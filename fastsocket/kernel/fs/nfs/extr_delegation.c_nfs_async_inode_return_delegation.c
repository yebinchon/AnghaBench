
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs_delegation {int stateid; } ;
struct nfs_client {TYPE_1__* cl_mvops; } ;
struct inode {int i_mapping; } ;
typedef int nfs4_stateid ;
struct TYPE_6__ {int delegation; } ;
struct TYPE_5__ {struct nfs_client* nfs_client; } ;
struct TYPE_4__ {int (* match_stateid ) (int *,int const*) ;} ;


 int ENOENT ;
 TYPE_3__* NFS_I (struct inode*) ;
 TYPE_2__* NFS_SERVER (struct inode*) ;
 int filemap_flush (int ) ;
 int nfs_delegation_run_state_manager (struct nfs_client*) ;
 int nfs_mark_return_delegation (struct nfs_delegation*) ;
 struct nfs_delegation* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (int *,int const*) ;

int nfs_async_inode_return_delegation(struct inode *inode,
          const nfs4_stateid *stateid)
{
 struct nfs_client *clp = NFS_SERVER(inode)->nfs_client;
 struct nfs_delegation *delegation;

 filemap_flush(inode->i_mapping);

 rcu_read_lock();
 delegation = rcu_dereference(NFS_I(inode)->delegation);

 if (!clp->cl_mvops->match_stateid(&delegation->stateid, stateid)) {
  rcu_read_unlock();
  return -ENOENT;
 }
 nfs_mark_return_delegation(delegation);
 rcu_read_unlock();

 nfs_delegation_run_state_manager(clp);
 return 0;
}
