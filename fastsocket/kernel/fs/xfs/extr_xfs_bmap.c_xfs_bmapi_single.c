
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_12__ {int i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
struct TYPE_13__ {int if_flags; } ;
typedef TYPE_2__ xfs_ifork_t ;
typedef scalar_t__ xfs_fsblock_t ;
typedef scalar_t__ xfs_fileoff_t ;
typedef int xfs_extnum_t ;
struct TYPE_14__ {scalar_t__ br_startoff; scalar_t__ br_startblock; scalar_t__ br_blockcount; } ;
typedef TYPE_3__ xfs_bmbt_irec_t ;


 int ASSERT (int) ;
 int EFSCORRUPTED ;
 int EIO ;
 scalar_t__ NULLFSBLOCK ;
 scalar_t__ XFS_DINODE_FMT_BTREE ;
 scalar_t__ XFS_DINODE_FMT_EXTENTS ;
 int XFS_ERRLEVEL_LOW ;
 int XFS_ERROR (int ) ;
 int XFS_ERROR_REPORT (char*,int ,int ) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (int ) ;
 int XFS_IFEXTENTS ;
 scalar_t__ XFS_IFORK_FORMAT (TYPE_1__*,int) ;
 TYPE_2__* XFS_IFORK_PTR (TYPE_1__*,int) ;
 int XFS_STATS_INC (int ) ;
 int isnullstartblock (scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int xfs_bmap_search_extents (TYPE_1__*,scalar_t__,int,int*,int *,TYPE_3__*,TYPE_3__*) ;
 int xfs_iread_extents (int *,TYPE_1__*,int) ;
 int xs_blk_mapr ;

int
xfs_bmapi_single(
 xfs_trans_t *tp,
 xfs_inode_t *ip,
 int whichfork,
 xfs_fsblock_t *fsb,
 xfs_fileoff_t bno)
{
 int eof;
 int error;
 xfs_bmbt_irec_t got;
 xfs_ifork_t *ifp;
 xfs_extnum_t lastx;
 xfs_bmbt_irec_t prev;

 ifp = XFS_IFORK_PTR(ip, whichfork);
 if (unlikely(
     XFS_IFORK_FORMAT(ip, whichfork) != XFS_DINODE_FMT_BTREE &&
     XFS_IFORK_FORMAT(ip, whichfork) != XFS_DINODE_FMT_EXTENTS)) {
        XFS_ERROR_REPORT("xfs_bmapi_single", XFS_ERRLEVEL_LOW,
    ip->i_mount);
        return XFS_ERROR(EFSCORRUPTED);
 }
 if (XFS_FORCED_SHUTDOWN(ip->i_mount))
  return XFS_ERROR(EIO);
 XFS_STATS_INC(xs_blk_mapr);
 if (!(ifp->if_flags & XFS_IFEXTENTS) &&
     (error = xfs_iread_extents(tp, ip, whichfork)))
  return error;
 (void)xfs_bmap_search_extents(ip, bno, whichfork, &eof, &lastx, &got,
  &prev);




 if (eof || got.br_startoff > bno) {
  *fsb = NULLFSBLOCK;
  return 0;
 }
 ASSERT(!isnullstartblock(got.br_startblock));
 ASSERT(bno < got.br_startoff + got.br_blockcount);
 *fsb = got.br_startblock + (bno - got.br_startoff);
 return 0;
}
