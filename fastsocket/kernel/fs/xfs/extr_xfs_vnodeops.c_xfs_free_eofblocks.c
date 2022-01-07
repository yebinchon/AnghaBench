
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int xfs_ufsize_t ;
typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
struct TYPE_15__ {scalar_t__ i_delayed_blks; } ;
typedef TYPE_1__ xfs_inode_t ;
typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_filblks_t ;
struct TYPE_16__ {scalar_t__ br_startblock; } ;
typedef TYPE_2__ xfs_bmbt_irec_t ;


 int ASSERT (int ) ;
 int EAGAIN ;
 scalar_t__ HOLESTARTBLOCK ;
 scalar_t__ XFS_B_TO_FSB (int *,int ) ;
 int XFS_DATA_FORK ;
 int XFS_FORCED_SHUTDOWN (int *) ;
 int XFS_FREE_EOF_TRYLOCK ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_SHARED ;
 int XFS_IOLOCK_EXCL ;
 scalar_t__ XFS_ISIZE (TYPE_1__*) ;
 int XFS_ITRUNCATE_LOG_COUNT ;
 int XFS_ITRUNCATE_LOG_RES (int *) ;
 int XFS_ITRUNC_DEFINITE ;
 scalar_t__ XFS_MAXIOFFSET (int *) ;
 int XFS_TRANS_ABORT ;
 int XFS_TRANS_INACTIVE ;
 int XFS_TRANS_PERM_LOG_RES ;
 int XFS_TRANS_RELEASE_LOG_RES ;
 int xfs_bmapi (int *,TYPE_1__*,scalar_t__,scalar_t__,int ,int *,int ,TYPE_2__*,int*,int *) ;
 int xfs_ilock (TYPE_1__*,int) ;
 int xfs_ilock_nowait (TYPE_1__*,int) ;
 int xfs_inode_clear_eofblocks_tag (TYPE_1__*) ;
 int xfs_itruncate_finish (int **,TYPE_1__*,scalar_t__,int ) ;
 int xfs_itruncate_start (TYPE_1__*,int ,scalar_t__) ;
 int xfs_iunlock (TYPE_1__*,int) ;
 int xfs_qm_dqattach (TYPE_1__*,int ) ;
 int * xfs_trans_alloc (int *,int ) ;
 int xfs_trans_cancel (int *,int) ;
 int xfs_trans_commit (int *,int) ;
 int xfs_trans_ijoin (int *,TYPE_1__*) ;
 int xfs_trans_reserve (int *,int ,int ,int ,int ,int ) ;

int
xfs_free_eofblocks(
 xfs_mount_t *mp,
 xfs_inode_t *ip,
 int flags)
{
 xfs_trans_t *tp;
 int error;
 xfs_fileoff_t end_fsb;
 xfs_fileoff_t last_fsb;
 xfs_filblks_t map_len;
 int nimaps;
 xfs_bmbt_irec_t imap;





 end_fsb = XFS_B_TO_FSB(mp, (xfs_ufsize_t)XFS_ISIZE(ip));
 last_fsb = XFS_B_TO_FSB(mp, (xfs_ufsize_t)XFS_MAXIOFFSET(mp));
 if (last_fsb <= end_fsb)
  return 0;
 map_len = last_fsb - end_fsb;

 nimaps = 1;
 xfs_ilock(ip, XFS_ILOCK_SHARED);
 error = xfs_bmapi(((void*)0), ip, end_fsb, map_len, 0,
     ((void*)0), 0, &imap, &nimaps, ((void*)0));
 xfs_iunlock(ip, XFS_ILOCK_SHARED);

 if (!error && (nimaps != 0) &&
     (imap.br_startblock != HOLESTARTBLOCK ||
      ip->i_delayed_blks)) {



  error = xfs_qm_dqattach(ip, 0);
  if (error)
   return error;






  tp = xfs_trans_alloc(mp, XFS_TRANS_INACTIVE);
  if (flags & XFS_FREE_EOF_TRYLOCK) {
   if (!xfs_ilock_nowait(ip, XFS_IOLOCK_EXCL)) {
    xfs_trans_cancel(tp, 0);
    return EAGAIN;
   }
  } else {
   xfs_ilock(ip, XFS_IOLOCK_EXCL);
  }
  error = xfs_itruncate_start(ip, XFS_ITRUNC_DEFINITE,
        XFS_ISIZE(ip));
  if (error) {
   xfs_trans_cancel(tp, 0);
   xfs_iunlock(ip, XFS_IOLOCK_EXCL);
   return error;
  }

  error = xfs_trans_reserve(tp, 0,
       XFS_ITRUNCATE_LOG_RES(mp),
       0, XFS_TRANS_PERM_LOG_RES,
       XFS_ITRUNCATE_LOG_COUNT);
  if (error) {
   ASSERT(XFS_FORCED_SHUTDOWN(mp));
   xfs_trans_cancel(tp, 0);
   xfs_iunlock(ip, XFS_IOLOCK_EXCL);
   return error;
  }

  xfs_ilock(ip, XFS_ILOCK_EXCL);
  xfs_trans_ijoin(tp, ip);

  error = xfs_itruncate_finish(&tp, ip, XFS_ISIZE(ip),
          XFS_DATA_FORK);




  if (error) {
   xfs_trans_cancel(tp,
      (XFS_TRANS_RELEASE_LOG_RES |
       XFS_TRANS_ABORT));
  } else {
   error = xfs_trans_commit(tp,
      XFS_TRANS_RELEASE_LOG_RES);
   if (!error)
    xfs_inode_clear_eofblocks_tag(ip);
  }
  xfs_iunlock(ip, XFS_IOLOCK_EXCL|XFS_ILOCK_EXCL);
 }
 return error;
}
