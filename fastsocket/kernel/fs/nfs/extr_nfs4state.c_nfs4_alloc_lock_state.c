
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nfs_server {int lockowner_id; struct nfs_client* nfs_client; } ;
struct nfs_client {int cl_lock; } ;
struct nfs4_state {TYPE_1__* owner; } ;
struct TYPE_9__ {int posix_owner; int flock_owner; } ;
struct TYPE_10__ {unsigned int lo_type; TYPE_4__ lo_u; } ;
struct TYPE_8__ {int list; int lock; int wait; } ;
struct TYPE_7__ {TYPE_3__* sequence; } ;
struct nfs4_lock_state {int ls_locks; int ls_id; TYPE_5__ ls_owner; struct nfs4_state* ls_state; int ls_count; TYPE_3__ ls_sequence; TYPE_2__ ls_seqid; } ;
typedef int pid_t ;
typedef int fl_owner_t ;
struct TYPE_6__ {struct nfs_server* so_server; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;


 int atomic_set (int *,int) ;
 int kfree (struct nfs4_lock_state*) ;
 struct nfs4_lock_state* kzalloc (int,int ) ;
 int nfs_alloc_unique_id_locked (int *,int *,int,int) ;
 int rpc_init_wait_queue (int *,char*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs4_lock_state *nfs4_alloc_lock_state(struct nfs4_state *state, fl_owner_t fl_owner, pid_t fl_pid, unsigned int type)
{
 struct nfs4_lock_state *lsp;
 struct nfs_server *server = state->owner->so_server;
 struct nfs_client *clp = server->nfs_client;

 lsp = kzalloc(sizeof(*lsp), GFP_NOFS);
 if (lsp == ((void*)0))
  return ((void*)0);
 rpc_init_wait_queue(&lsp->ls_sequence.wait, "lock_seqid_waitqueue");
 spin_lock_init(&lsp->ls_sequence.lock);
 INIT_LIST_HEAD(&lsp->ls_sequence.list);
 lsp->ls_seqid.sequence = &lsp->ls_sequence;
 atomic_set(&lsp->ls_count, 1);
 lsp->ls_state = state;
 lsp->ls_owner.lo_type = type;
 switch (lsp->ls_owner.lo_type) {
 case 129:
  lsp->ls_owner.lo_u.flock_owner = fl_pid;
  break;
 case 128:
  lsp->ls_owner.lo_u.posix_owner = fl_owner;
  break;
 default:
  kfree(lsp);
  return ((void*)0);
 }
 spin_lock(&clp->cl_lock);
 nfs_alloc_unique_id_locked(&server->lockowner_id, &lsp->ls_id, 1, 64);
 spin_unlock(&clp->cl_lock);
 INIT_LIST_HEAD(&lsp->ls_locks);
 return lsp;
}
