
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {struct nfs4_state* state; int cred; int mode; int dentry; } ;
struct nfs4_state {int inode; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;


 struct inode* ERR_CAST (struct nfs4_state*) ;
 scalar_t__ IS_ERR (struct nfs4_state*) ;
 struct inode* igrab (int ) ;
 struct nfs4_state* nfs4_do_open (struct inode*,int ,int ,int,struct iattr*,int ) ;

__attribute__((used)) static struct inode *
nfs4_atomic_open(struct inode *dir, struct nfs_open_context *ctx, int open_flags, struct iattr *attr)
{
 struct nfs4_state *state;


 state = nfs4_do_open(dir, ctx->dentry, ctx->mode, open_flags, attr, ctx->cred);
 if (IS_ERR(state))
  return ERR_CAST(state);
 ctx->state = state;
 return igrab(state->inode);
}
