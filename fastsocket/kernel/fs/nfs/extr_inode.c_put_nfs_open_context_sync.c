
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int dummy; } ;


 int __put_nfs_open_context (struct nfs_open_context*,int) ;

__attribute__((used)) static void put_nfs_open_context_sync(struct nfs_open_context *ctx)
{
 __put_nfs_open_context(ctx, 1);
}
