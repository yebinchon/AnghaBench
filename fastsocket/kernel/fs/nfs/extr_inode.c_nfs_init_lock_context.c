
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l_pid; int l_owner; } ;
struct nfs_lock_context {int io_count; int list; TYPE_1__ lockowner; int count; } ;
struct TYPE_4__ {int tgid; int files; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 TYPE_2__* current ;
 int nfs_iocounter_init (int *) ;

__attribute__((used)) static void nfs_init_lock_context(struct nfs_lock_context *l_ctx)
{
 atomic_set(&l_ctx->count, 1);
 l_ctx->lockowner.l_owner = current->files;
 l_ctx->lockowner.l_pid = current->tgid;
 INIT_LIST_HEAD(&l_ctx->list);
 nfs_iocounter_init(&l_ctx->io_count);
}
