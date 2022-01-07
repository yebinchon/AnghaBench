
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_22__ {int sb_logsunit; int sb_blocksize; int sb_logsectsize; int sb_width; int sb_unit; int sb_uuid; int sb_logstart; int sb_rextents; int sb_rblocks; int sb_dblocks; int sb_imax_pct; int sb_inodesize; int sb_sectsize; int sb_logblocks; int sb_agcount; int sb_agblocks; int sb_rextsize; } ;
struct TYPE_20__ {TYPE_3__ m_sb; int m_dirblksize; } ;
typedef TYPE_1__ xfs_mount_t ;
struct TYPE_21__ {int flags; int logsunit; int dirblocksize; int rtsectsize; int logsectsize; int version; int swidth; int sunit; int uuid; int logstart; int rtextents; int rtblocks; int datablocks; int imaxpct; int inodesize; int sectsize; int logblocks; int agcount; int agblocks; int rtextsize; int blocksize; } ;
typedef TYPE_2__ xfs_fsop_geom_t ;


 int ASSERT (int) ;
 int BBSIZE ;
 int XFS_FSOP_GEOM_FLAGS_ATTR ;
 int XFS_FSOP_GEOM_FLAGS_ATTR2 ;
 int XFS_FSOP_GEOM_FLAGS_DALIGN ;
 int XFS_FSOP_GEOM_FLAGS_DIRV2 ;
 int XFS_FSOP_GEOM_FLAGS_DIRV2CI ;
 int XFS_FSOP_GEOM_FLAGS_EXTFLG ;
 int XFS_FSOP_GEOM_FLAGS_IALIGN ;
 int XFS_FSOP_GEOM_FLAGS_LAZYSB ;
 int XFS_FSOP_GEOM_FLAGS_LOGV2 ;
 int XFS_FSOP_GEOM_FLAGS_NLINK ;
 int XFS_FSOP_GEOM_FLAGS_PROJID32 ;
 int XFS_FSOP_GEOM_FLAGS_QUOTA ;
 int XFS_FSOP_GEOM_FLAGS_SECTOR ;
 int XFS_FSOP_GEOM_FLAGS_SHARED ;
 int XFS_FSOP_GEOM_VERSION ;
 int memcpy (int ,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ xfs_sb_version_hasalign (TYPE_3__*) ;
 scalar_t__ xfs_sb_version_hasasciici (TYPE_3__*) ;
 scalar_t__ xfs_sb_version_hasattr (TYPE_3__*) ;
 scalar_t__ xfs_sb_version_hasattr2 (TYPE_3__*) ;
 scalar_t__ xfs_sb_version_hasdalign (TYPE_3__*) ;
 scalar_t__ xfs_sb_version_hasdirv2 (TYPE_3__*) ;
 scalar_t__ xfs_sb_version_hasextflgbit (TYPE_3__*) ;
 scalar_t__ xfs_sb_version_haslazysbcount (TYPE_3__*) ;
 scalar_t__ xfs_sb_version_haslogv2 (TYPE_3__*) ;
 scalar_t__ xfs_sb_version_hasnlink (TYPE_3__*) ;
 scalar_t__ xfs_sb_version_hasprojid32bit (TYPE_3__*) ;
 scalar_t__ xfs_sb_version_hasquota (TYPE_3__*) ;
 scalar_t__ xfs_sb_version_hassector (TYPE_3__*) ;
 scalar_t__ xfs_sb_version_hasshared (TYPE_3__*) ;

int
xfs_fs_geometry(
 xfs_mount_t *mp,
 xfs_fsop_geom_t *geo,
 int new_version)
{

 memset(geo, 0, sizeof(*geo));

 geo->blocksize = mp->m_sb.sb_blocksize;
 geo->rtextsize = mp->m_sb.sb_rextsize;
 geo->agblocks = mp->m_sb.sb_agblocks;
 geo->agcount = mp->m_sb.sb_agcount;
 geo->logblocks = mp->m_sb.sb_logblocks;
 geo->sectsize = mp->m_sb.sb_sectsize;
 geo->inodesize = mp->m_sb.sb_inodesize;
 geo->imaxpct = mp->m_sb.sb_imax_pct;
 geo->datablocks = mp->m_sb.sb_dblocks;
 geo->rtblocks = mp->m_sb.sb_rblocks;
 geo->rtextents = mp->m_sb.sb_rextents;
 geo->logstart = mp->m_sb.sb_logstart;
 ASSERT(sizeof(geo->uuid)==sizeof(mp->m_sb.sb_uuid));
 memcpy(geo->uuid, &mp->m_sb.sb_uuid, sizeof(mp->m_sb.sb_uuid));
 if (new_version >= 2) {
  geo->sunit = mp->m_sb.sb_unit;
  geo->swidth = mp->m_sb.sb_width;
 }
 if (new_version >= 3) {
  geo->version = XFS_FSOP_GEOM_VERSION;
  geo->flags =
   (xfs_sb_version_hasattr(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_ATTR : 0) |
   (xfs_sb_version_hasnlink(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_NLINK : 0) |
   (xfs_sb_version_hasquota(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_QUOTA : 0) |
   (xfs_sb_version_hasalign(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_IALIGN : 0) |
   (xfs_sb_version_hasdalign(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_DALIGN : 0) |
   (xfs_sb_version_hasshared(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_SHARED : 0) |
   (xfs_sb_version_hasextflgbit(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_EXTFLG : 0) |
   (xfs_sb_version_hasdirv2(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_DIRV2 : 0) |
   (xfs_sb_version_hassector(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_SECTOR : 0) |
   (xfs_sb_version_hasasciici(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_DIRV2CI : 0) |
   (xfs_sb_version_haslazysbcount(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_LAZYSB : 0) |
   (xfs_sb_version_hasattr2(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_ATTR2 : 0) |
   (xfs_sb_version_hasprojid32bit(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_PROJID32 : 0);
  geo->logsectsize = xfs_sb_version_hassector(&mp->m_sb) ?
    mp->m_sb.sb_logsectsize : BBSIZE;
  geo->rtsectsize = mp->m_sb.sb_blocksize;
  geo->dirblocksize = mp->m_dirblksize;
 }
 if (new_version >= 4) {
  geo->flags |=
   (xfs_sb_version_haslogv2(&mp->m_sb) ?
    XFS_FSOP_GEOM_FLAGS_LOGV2 : 0);
  geo->logsunit = mp->m_sb.sb_logsunit;
 }
 return 0;
}
