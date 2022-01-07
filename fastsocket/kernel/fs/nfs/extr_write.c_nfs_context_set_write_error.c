
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int error; int flags; } ;


 int NFS_CONTEXT_ERROR_WRITE ;
 int set_bit (int ,int *) ;
 int smp_wmb () ;

__attribute__((used)) static void nfs_context_set_write_error(struct nfs_open_context *ctx, int error)
{
 ctx->error = error;
 smp_wmb();
 set_bit(NFS_CONTEXT_ERROR_WRITE, &ctx->flags);
}
