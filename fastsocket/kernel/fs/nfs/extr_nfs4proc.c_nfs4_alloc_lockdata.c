
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct nfs_server {int s_dev; TYPE_3__* nfs_client; } ;
struct nfs_open_context {int dummy; } ;
struct TYPE_12__ {int s_dev; int id; int clientid; } ;
struct TYPE_14__ {int * open_seqid; int * lock_seqid; TYPE_5__ lock_owner; int * lock_stateid; int * fl; int fh; } ;
struct TYPE_13__ {int * lock_seqid; } ;
struct nfs4_lockdata {TYPE_7__ arg; int fl; int ctx; struct nfs_server* server; struct nfs4_lock_state* lsp; TYPE_6__ res; } ;
struct TYPE_11__ {int id; } ;
struct nfs4_lock_state {int ls_count; TYPE_4__ ls_id; int ls_stateid; int ls_seqid; TYPE_2__* ls_state; } ;
struct inode {int dummy; } ;
struct file_lock {int dummy; } ;
typedef int gfp_t ;
struct TYPE_10__ {int cl_clientid; } ;
struct TYPE_9__ {TYPE_1__* owner; struct inode* inode; } ;
struct TYPE_8__ {int so_seqid; } ;


 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int atomic_inc (int *) ;
 int get_nfs_open_context (struct nfs_open_context*) ;
 int kfree (struct nfs4_lockdata*) ;
 struct nfs4_lockdata* kzalloc (int,int ) ;
 int memcpy (int *,struct file_lock*,int) ;
 void* nfs_alloc_seqid (int *,int ) ;
 int nfs_free_seqid (int *) ;

__attribute__((used)) static struct nfs4_lockdata *nfs4_alloc_lockdata(struct file_lock *fl,
  struct nfs_open_context *ctx, struct nfs4_lock_state *lsp,
  gfp_t gfp_mask)
{
 struct nfs4_lockdata *p;
 struct inode *inode = lsp->ls_state->inode;
 struct nfs_server *server = NFS_SERVER(inode);

 p = kzalloc(sizeof(*p), gfp_mask);
 if (p == ((void*)0))
  return ((void*)0);

 p->arg.fh = NFS_FH(inode);
 p->arg.fl = &p->fl;
 p->arg.open_seqid = nfs_alloc_seqid(&lsp->ls_state->owner->so_seqid, gfp_mask);
 if (p->arg.open_seqid == ((void*)0))
  goto out_free;
 p->arg.lock_seqid = nfs_alloc_seqid(&lsp->ls_seqid, gfp_mask);
 if (p->arg.lock_seqid == ((void*)0))
  goto out_free_seqid;
 p->arg.lock_stateid = &lsp->ls_stateid;
 p->arg.lock_owner.clientid = server->nfs_client->cl_clientid;
 p->arg.lock_owner.id = lsp->ls_id.id;
 p->arg.lock_owner.s_dev = server->s_dev;
 p->res.lock_seqid = p->arg.lock_seqid;
 p->lsp = lsp;
 p->server = server;
 atomic_inc(&lsp->ls_count);
 p->ctx = get_nfs_open_context(ctx);
 memcpy(&p->fl, fl, sizeof(p->fl));
 return p;
out_free_seqid:
 nfs_free_seqid(p->arg.open_seqid);
out_free:
 kfree(p);
 return ((void*)0);
}
