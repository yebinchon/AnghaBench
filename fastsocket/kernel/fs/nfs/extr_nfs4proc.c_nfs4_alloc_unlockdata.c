
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs_seqid {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct TYPE_6__ {int * stateid; struct nfs_seqid* seqid; int * fl; int fh; } ;
struct TYPE_5__ {struct nfs_seqid* seqid; } ;
struct nfs4_unlockdata {int server; int fl; int ctx; struct nfs4_lock_state* lsp; TYPE_3__ arg; TYPE_2__ res; } ;
struct nfs4_lock_state {int ls_count; int ls_stateid; TYPE_1__* ls_state; } ;
struct inode {int dummy; } ;
struct file_lock {int dummy; } ;
struct TYPE_4__ {struct inode* inode; } ;


 int GFP_NOFS ;
 int NFS_FH (struct inode*) ;
 int NFS_SERVER (struct inode*) ;
 int atomic_inc (int *) ;
 int get_nfs_open_context (struct nfs_open_context*) ;
 struct nfs4_unlockdata* kzalloc (int,int ) ;
 int memcpy (int *,struct file_lock*,int) ;

__attribute__((used)) static struct nfs4_unlockdata *nfs4_alloc_unlockdata(struct file_lock *fl,
  struct nfs_open_context *ctx,
  struct nfs4_lock_state *lsp,
  struct nfs_seqid *seqid)
{
 struct nfs4_unlockdata *p;
 struct inode *inode = lsp->ls_state->inode;

 p = kzalloc(sizeof(*p), GFP_NOFS);
 if (p == ((void*)0))
  return ((void*)0);
 p->arg.fh = NFS_FH(inode);
 p->arg.fl = &p->fl;
 p->arg.seqid = seqid;
 p->res.seqid = seqid;
 p->arg.stateid = &lsp->ls_stateid;
 p->lsp = lsp;
 atomic_inc(&lsp->ls_count);

 p->ctx = get_nfs_open_context(ctx);
 memcpy(&p->fl, fl, sizeof(p->fl));
 p->server = NFS_SERVER(inode);
 return p;
}
