
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int xfs_off_t ;
typedef int xfs_buftarg_t ;
struct TYPE_9__ {int b_flags; } ;
typedef TYPE_1__ xfs_buf_t ;
typedef int xfs_buf_flags_t ;


 int XBF_ASYNC ;
 int XBF_LOCK ;
 int XBF_READ ;
 int XBF_TRYLOCK ;
 int XFS_BUF_ISDONE (TYPE_1__*) ;
 int XFS_STATS_INC (int ) ;
 int _RET_IP_ ;
 int _xfs_buf_read (TYPE_1__*,int) ;
 int trace_xfs_buf_read (TYPE_1__*,int,int ) ;
 int xb_get_read ;
 TYPE_1__* xfs_buf_get (int *,int ,size_t,int) ;
 int xfs_buf_rele (TYPE_1__*) ;
 int xfs_buf_unlock (TYPE_1__*) ;

xfs_buf_t *
xfs_buf_read(
 xfs_buftarg_t *target,
 xfs_off_t ioff,
 size_t isize,
 xfs_buf_flags_t flags)
{
 xfs_buf_t *bp;

 flags |= XBF_READ;

 bp = xfs_buf_get(target, ioff, isize, flags);
 if (bp) {
  trace_xfs_buf_read(bp, flags, _RET_IP_);

  if (!XFS_BUF_ISDONE(bp)) {
   XFS_STATS_INC(xb_get_read);
   _xfs_buf_read(bp, flags);
  } else if (flags & XBF_ASYNC) {




   goto no_buffer;
  } else {

   bp->b_flags &= ~XBF_READ;
  }
 }

 return bp;

 no_buffer:
 if (flags & (XBF_LOCK | XBF_TRYLOCK))
  xfs_buf_unlock(bp);
 xfs_buf_rele(bp);
 return ((void*)0);
}
