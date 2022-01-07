
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;
struct xfs_buf {int b_flags; } ;


 int SHUTDOWN_META_IO_ERROR ;
 int XBF_ASYNC ;
 int XBF_READ ;
 int XBF_WRITE ;
 int xfs_bdstrat_cb (struct xfs_buf*) ;
 int xfs_buf_delwri_dequeue (struct xfs_buf*) ;
 int xfs_buf_iowait (struct xfs_buf*) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 int xfs_force_shutdown (struct xfs_mount*,int ) ;

int
xfs_bwrite(
 struct xfs_mount *mp,
 struct xfs_buf *bp)
{
 int error;

 bp->b_flags |= XBF_WRITE;
 bp->b_flags &= ~(XBF_ASYNC | XBF_READ);

 xfs_buf_delwri_dequeue(bp);
 xfs_bdstrat_cb(bp);

 error = xfs_buf_iowait(bp);
 if (error)
  xfs_force_shutdown(mp, SHUTDOWN_META_IO_ERROR);
 xfs_buf_relse(bp);
 return error;
}
