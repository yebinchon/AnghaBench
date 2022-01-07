
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {struct nfs_delegation* delegation; } ;
struct nfs_delegation {int type; int lock; int stateid; int flags; } ;
struct nfs4_state {int inode; } ;
typedef int nfs4_stateid ;
typedef int fmode_t ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int NFS_DELEGATION_RETURNING ;
 struct nfs_inode* NFS_I (int ) ;
 int __update_open_stateid (struct nfs4_state*,int *,int *,int) ;
 int nfs4_stateid_match (int *,int *) ;
 int nfs_mark_delegation_referenced (struct nfs_delegation*) ;
 struct nfs_delegation* rcu_dereference (struct nfs_delegation*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int update_open_stateid(struct nfs4_state *state, nfs4_stateid *open_stateid, nfs4_stateid *delegation, fmode_t fmode)
{
 struct nfs_inode *nfsi = NFS_I(state->inode);
 struct nfs_delegation *deleg_cur;
 int ret = 0;

 fmode &= (FMODE_READ|FMODE_WRITE);

 rcu_read_lock();
 deleg_cur = rcu_dereference(nfsi->delegation);
 if (deleg_cur == ((void*)0))
  goto no_delegation;

 spin_lock(&deleg_cur->lock);
 if (nfsi->delegation != deleg_cur ||
    test_bit(NFS_DELEGATION_RETURNING, &deleg_cur->flags) ||
     (deleg_cur->type & fmode) != fmode)
  goto no_delegation_unlock;

 if (delegation == ((void*)0))
  delegation = &deleg_cur->stateid;
 else if (!nfs4_stateid_match(&deleg_cur->stateid, delegation))
  goto no_delegation_unlock;

 nfs_mark_delegation_referenced(deleg_cur);
 __update_open_stateid(state, open_stateid, &deleg_cur->stateid, fmode);
 ret = 1;
no_delegation_unlock:
 spin_unlock(&deleg_cur->lock);
no_delegation:
 rcu_read_unlock();

 if (!ret && open_stateid != ((void*)0)) {
  __update_open_stateid(state, open_stateid, ((void*)0), fmode);
  ret = 1;
 }

 return ret;
}
