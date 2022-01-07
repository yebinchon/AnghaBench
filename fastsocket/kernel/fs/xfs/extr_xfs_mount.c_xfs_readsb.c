
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {unsigned int sb_sectsize; } ;
struct TYPE_9__ {int * m_sb_bp; TYPE_3__ m_sb; int * m_ddev_targp; } ;
typedef TYPE_1__ xfs_mount_t ;
typedef int xfs_buf_t ;


 int ASSERT (int ) ;
 int EIO ;
 int ENOSYS ;
 int XFS_BUF_TO_SBP (int *) ;
 int XFS_MFSI_QUIET ;
 int XFS_SB_DADDR ;
 int * xfs_buf_read_uncached (TYPE_1__*,int *,int ,unsigned int,int ) ;
 int xfs_buf_relse (int *) ;
 int xfs_buf_unlock (int *) ;
 unsigned int xfs_getsize_buftarg (int *) ;
 int xfs_icsb_reinit_counters (TYPE_1__*) ;
 int xfs_mount_validate_sb (TYPE_1__*,TYPE_3__*,int) ;
 int xfs_sb_from_disk (TYPE_3__*,int ) ;
 int xfs_warn (TYPE_1__*,char*,...) ;

int
xfs_readsb(xfs_mount_t *mp, int flags)
{
 unsigned int sector_size;
 xfs_buf_t *bp;
 int error;
 int loud = !(flags & XFS_MFSI_QUIET);

 ASSERT(mp->m_sb_bp == ((void*)0));
 ASSERT(mp->m_ddev_targp != ((void*)0));






 sector_size = xfs_getsize_buftarg(mp->m_ddev_targp);

reread:
 bp = xfs_buf_read_uncached(mp, mp->m_ddev_targp,
     XFS_SB_DADDR, sector_size, 0);
 if (!bp) {
  if (loud)
   xfs_warn(mp, "SB buffer read failed");
  return EIO;
 }





 xfs_sb_from_disk(&mp->m_sb, XFS_BUF_TO_SBP(bp));
 error = xfs_mount_validate_sb(mp, &(mp->m_sb), flags);
 if (error) {
  if (loud)
   xfs_warn(mp, "SB validate failed");
  goto release_buf;
 }




 if (sector_size > mp->m_sb.sb_sectsize) {
  if (loud)
   xfs_warn(mp, "device supports %u byte sectors (not %u)",
    sector_size, mp->m_sb.sb_sectsize);
  error = ENOSYS;
  goto release_buf;
 }





 if (sector_size < mp->m_sb.sb_sectsize) {
  xfs_buf_relse(bp);
  sector_size = mp->m_sb.sb_sectsize;
  goto reread;
 }


 xfs_icsb_reinit_counters(mp);

 mp->m_sb_bp = bp;
 xfs_buf_unlock(bp);
 return 0;

release_buf:
 xfs_buf_relse(bp);
 return error;
}
