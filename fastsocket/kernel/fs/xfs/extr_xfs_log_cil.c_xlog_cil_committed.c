
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_mount {int m_flags; } ;
struct xfs_cil_ctx {int busy_extents; int lv_chain; TYPE_2__* cil; int committing; int start_lsn; } ;
struct TYPE_4__ {int xc_cil_lock; TYPE_1__* xc_log; } ;
struct TYPE_3__ {int l_ailp; struct xfs_mount* l_mp; } ;


 int ASSERT (int) ;
 int XFS_MOUNT_DISCARD ;
 int kmem_free (struct xfs_cil_ctx*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_alloc_busy_clear (struct xfs_mount*,int *,int) ;
 int xfs_alloc_busy_sort (int *) ;
 int xfs_discard_extents (struct xfs_mount*,int *) ;
 int xfs_trans_committed_bulk (int ,int ,int ,int) ;
 int xlog_cil_free_logvec (int ) ;

__attribute__((used)) static void
xlog_cil_committed(
 void *args,
 int abort)
{
 struct xfs_cil_ctx *ctx = args;
 struct xfs_mount *mp = ctx->cil->xc_log->l_mp;

 xfs_trans_committed_bulk(ctx->cil->xc_log->l_ailp, ctx->lv_chain,
     ctx->start_lsn, abort);

 xfs_alloc_busy_sort(&ctx->busy_extents);
 xfs_alloc_busy_clear(mp, &ctx->busy_extents,
        (mp->m_flags & XFS_MOUNT_DISCARD) && !abort);

 spin_lock(&ctx->cil->xc_cil_lock);
 list_del(&ctx->committing);
 spin_unlock(&ctx->cil->xc_cil_lock);

 xlog_cil_free_logvec(ctx->lv_chain);

 if (!list_empty(&ctx->busy_extents)) {
  ASSERT(mp->m_flags & XFS_MOUNT_DISCARD);

  xfs_discard_extents(mp, &ctx->busy_extents);
  xfs_alloc_busy_clear(mp, &ctx->busy_extents, 0);
 }

 kmem_free(ctx);
}
