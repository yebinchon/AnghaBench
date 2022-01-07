
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct nfs4_state {int inode; } ;
struct file_lock {int dummy; } ;
typedef int nfs4_stateid ;


 int F_SETLK ;
 int NFS_LOCK_NEW ;
 struct nfs_server* NFS_SERVER (int ) ;
 int _nfs4_do_setlk (struct nfs4_state*,int ,struct file_lock*,int ) ;
 int nfs4_handle_delegation_recall_error (struct nfs_server*,struct nfs4_state*,int const*,int) ;
 int nfs4_set_lock_state (struct nfs4_state*,struct file_lock*) ;

int nfs4_lock_delegation_recall(struct file_lock *fl, struct nfs4_state *state, const nfs4_stateid *stateid)
{
 struct nfs_server *server = NFS_SERVER(state->inode);
 int err;

 err = nfs4_set_lock_state(state, fl);
 if (err != 0)
  return err;
 err = _nfs4_do_setlk(state, F_SETLK, fl, NFS_LOCK_NEW);
 return nfs4_handle_delegation_recall_error(server, state, stateid, err);
}
