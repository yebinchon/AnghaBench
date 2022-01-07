
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int dummy; } ;
struct nfs4_state_owner {int dummy; } ;
struct nfs4_state {int dummy; } ;


 int EAGAIN ;
 scalar_t__ IS_ERR (struct nfs_open_context*) ;
 int nfs4_do_open_reclaim (struct nfs_open_context*,struct nfs4_state*) ;
 struct nfs_open_context* nfs4_state_find_open_context (struct nfs4_state*) ;
 int put_nfs_open_context (struct nfs_open_context*) ;

__attribute__((used)) static int nfs4_open_reclaim(struct nfs4_state_owner *sp, struct nfs4_state *state)
{
 struct nfs_open_context *ctx;
 int ret;

 ctx = nfs4_state_find_open_context(state);
 if (IS_ERR(ctx))
  return -EAGAIN;
 ret = nfs4_do_open_reclaim(ctx, state);
 put_nfs_open_context(ctx);
 return ret;
}
