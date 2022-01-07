
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int dentry; } ;
struct nfs4_state {int count; int owner; } ;
struct nfs4_opendata {struct nfs4_state* state; } ;
typedef enum open_claim_type4 { ____Placeholder_open_claim_type4 } open_claim_type4 ;


 int ENOMEM ;
 struct nfs4_opendata* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int atomic_inc (int *) ;
 struct nfs4_opendata* nfs4_opendata_alloc (int ,int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static struct nfs4_opendata *nfs4_open_recoverdata_alloc(struct nfs_open_context *ctx,
  struct nfs4_state *state, enum open_claim_type4 claim)
{
 struct nfs4_opendata *opendata;

 opendata = nfs4_opendata_alloc(ctx->dentry, state->owner, 0, 0,
   ((void*)0), claim, GFP_NOFS);
 if (opendata == ((void*)0))
  return ERR_PTR(-ENOMEM);
 opendata->state = state;
 atomic_inc(&state->count);
 return opendata;
}
