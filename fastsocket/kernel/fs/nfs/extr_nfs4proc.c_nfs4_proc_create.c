
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int dummy; } ;
struct nfs_open_context {struct nfs4_state* state; int mode; struct dentry* dentry; struct rpc_cred* cred; } ;
struct nfs4_state {int inode; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;
typedef int fmode_t ;


 scalar_t__ IS_ERR (struct nfs4_state*) ;
 int PTR_ERR (struct nfs4_state*) ;
 int d_add (struct dentry*,int ) ;
 int d_drop (struct dentry*) ;
 int igrab (int ) ;
 int nfs4_close_sync (struct nfs4_state*,int ) ;
 struct nfs4_state* nfs4_do_open (struct inode*,struct dentry*,int ,int,struct iattr*,struct rpc_cred*) ;
 int nfs_save_change_attribute (struct inode*) ;
 int nfs_set_verifier (struct dentry*,int ) ;

__attribute__((used)) static int
nfs4_proc_create(struct inode *dir, struct dentry *dentry, struct iattr *sattr,
                 int flags, struct nfs_open_context *ctx)
{
 struct dentry *de = dentry;
 struct nfs4_state *state;
 struct rpc_cred *cred = ((void*)0);
 fmode_t fmode = 0;
 int status = 0;

 if (ctx != ((void*)0)) {
  cred = ctx->cred;
  de = ctx->dentry;
  fmode = ctx->mode;
 }
 state = nfs4_do_open(dir, de, fmode, flags, sattr, cred);
 d_drop(dentry);
 if (IS_ERR(state)) {
  status = PTR_ERR(state);
  goto out;
 }
 d_add(dentry, igrab(state->inode));
 nfs_set_verifier(dentry, nfs_save_change_attribute(dir));
 if (ctx != ((void*)0))
  ctx->state = state;
 else
  nfs4_close_sync(state, fmode);
out:
 return status;
}
