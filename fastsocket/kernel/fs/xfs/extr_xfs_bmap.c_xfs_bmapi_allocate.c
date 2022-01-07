
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fsblock_t ;
typedef int xfs_extnum_t ;
struct xfs_btree_cur {int dummy; } ;
struct xfs_bmap_free {int dummy; } ;
struct xfs_bmalloca {int stack_switch; } ;
struct xfs_bmalloc_work {int flags; int* nallocs; int* logflags; int result; int work; struct xfs_bmap_free* flist; int * firstblock; struct xfs_btree_cur** cur; int * lastx; struct xfs_bmalloca* bma; int * done; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int INIT_WORK (int *,int ) ;
 int __xfs_bmapi_allocate (struct xfs_bmalloca*,int *,struct xfs_btree_cur**,int *,struct xfs_bmap_free*,int,int*,int*) ;
 int done ;
 int queue_work (int ,int *) ;
 int wait_for_completion (int *) ;
 int xfs_alloc_wq ;
 int xfs_bmapi_allocate_worker ;

int
xfs_bmapi_allocate(
 struct xfs_bmalloca *bma,
 xfs_extnum_t *lastx,
 struct xfs_btree_cur **cur,
 xfs_fsblock_t *firstblock,
 struct xfs_bmap_free *flist,
 int flags,
 int *nallocs,
 int *logflags)
{
 DECLARE_COMPLETION_ONSTACK(done);
 struct xfs_bmalloc_work args;

 if (!bma->stack_switch)
  return __xfs_bmapi_allocate(bma, lastx, cur, firstblock, flist,
         flags, nallocs, logflags);

 args.done = &done;
 args.bma = bma;
 args.lastx = lastx;
 args.cur = cur;
 args.firstblock = firstblock;
 args.flist = flist;
 args.flags = flags;
 args.nallocs = nallocs;
 args.logflags = logflags;
 INIT_WORK(&args.work, xfs_bmapi_allocate_worker);
 queue_work(xfs_alloc_wq, &args.work);
 wait_for_completion(&done);
 return args.result;
}
