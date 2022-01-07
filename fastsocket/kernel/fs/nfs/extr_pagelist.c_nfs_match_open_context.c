
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {scalar_t__ cred; scalar_t__ state; } ;



__attribute__((used)) static bool nfs_match_open_context(const struct nfs_open_context *ctx1,
  const struct nfs_open_context *ctx2)
{
 return ctx1->cred == ctx2->cred && ctx1->state == ctx2->state;
}
