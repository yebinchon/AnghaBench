
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_cil_ctx {int sequence; struct xfs_cil* cil; int busy_extents; int committing; } ;
struct xfs_cil {int xc_current_sequence; struct log* xc_log; struct xfs_cil_ctx* xc_ctx; int xc_commit_wait; int xc_ctx_lock; int xc_cil_lock; int xc_committing; int xc_cil; } ;
struct log {struct xfs_cil* l_cilp; TYPE_1__* l_mp; } ;
struct TYPE_2__ {int m_flags; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int KM_MAYFAIL ;
 int KM_SLEEP ;
 int XFS_MOUNT_DELAYLOG ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 int kmem_free (struct xfs_cil*) ;
 void* kmem_zalloc (int,int) ;
 int spin_lock_init (int *) ;

int
xlog_cil_init(
 struct log *log)
{
 struct xfs_cil *cil;
 struct xfs_cil_ctx *ctx;

 log->l_cilp = ((void*)0);
 if (!(log->l_mp->m_flags & XFS_MOUNT_DELAYLOG))
  return 0;

 cil = kmem_zalloc(sizeof(*cil), KM_SLEEP|KM_MAYFAIL);
 if (!cil)
  return ENOMEM;

 ctx = kmem_zalloc(sizeof(*ctx), KM_SLEEP|KM_MAYFAIL);
 if (!ctx) {
  kmem_free(cil);
  return ENOMEM;
 }

 INIT_LIST_HEAD(&cil->xc_cil);
 INIT_LIST_HEAD(&cil->xc_committing);
 spin_lock_init(&cil->xc_cil_lock);
 init_rwsem(&cil->xc_ctx_lock);
 init_waitqueue_head(&cil->xc_commit_wait);

 INIT_LIST_HEAD(&ctx->committing);
 INIT_LIST_HEAD(&ctx->busy_extents);
 ctx->sequence = 1;
 ctx->cil = cil;
 cil->xc_ctx = ctx;
 cil->xc_current_sequence = ctx->sequence;

 cil->xc_log = log;
 log->l_cilp = cil;
 return 0;
}
