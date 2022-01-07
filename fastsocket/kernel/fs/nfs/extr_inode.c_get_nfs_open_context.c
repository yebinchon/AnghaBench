
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct nfs_open_context {TYPE_1__ lock_context; } ;


 int atomic_inc (int *) ;

struct nfs_open_context *get_nfs_open_context(struct nfs_open_context *ctx)
{
 if (ctx != ((void*)0))
  atomic_inc(&ctx->lock_context.count);
 return ctx;
}
