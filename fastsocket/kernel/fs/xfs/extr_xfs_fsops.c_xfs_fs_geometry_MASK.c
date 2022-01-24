#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  sb_logsunit; int /*<<< orphan*/  sb_blocksize; int /*<<< orphan*/  sb_logsectsize; int /*<<< orphan*/  sb_width; int /*<<< orphan*/  sb_unit; int /*<<< orphan*/  sb_uuid; int /*<<< orphan*/  sb_logstart; int /*<<< orphan*/  sb_rextents; int /*<<< orphan*/  sb_rblocks; int /*<<< orphan*/  sb_dblocks; int /*<<< orphan*/  sb_imax_pct; int /*<<< orphan*/  sb_inodesize; int /*<<< orphan*/  sb_sectsize; int /*<<< orphan*/  sb_logblocks; int /*<<< orphan*/  sb_agcount; int /*<<< orphan*/  sb_agblocks; int /*<<< orphan*/  sb_rextsize; } ;
struct TYPE_20__ {TYPE_3__ m_sb; int /*<<< orphan*/  m_dirblksize; } ;
typedef  TYPE_1__ xfs_mount_t ;
struct TYPE_21__ {int flags; int /*<<< orphan*/  logsunit; int /*<<< orphan*/  dirblocksize; int /*<<< orphan*/  rtsectsize; int /*<<< orphan*/  logsectsize; int /*<<< orphan*/  version; int /*<<< orphan*/  swidth; int /*<<< orphan*/  sunit; int /*<<< orphan*/  uuid; int /*<<< orphan*/  logstart; int /*<<< orphan*/  rtextents; int /*<<< orphan*/  rtblocks; int /*<<< orphan*/  datablocks; int /*<<< orphan*/  imaxpct; int /*<<< orphan*/  inodesize; int /*<<< orphan*/  sectsize; int /*<<< orphan*/  logblocks; int /*<<< orphan*/  agcount; int /*<<< orphan*/  agblocks; int /*<<< orphan*/  rtextsize; int /*<<< orphan*/  blocksize; } ;
typedef  TYPE_2__ xfs_fsop_geom_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BBSIZE ; 
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
 int /*<<< orphan*/  XFS_FSOP_GEOM_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 scalar_t__ FUNC15 (TYPE_3__*) ; 
 scalar_t__ FUNC16 (TYPE_3__*) ; 

int
FUNC17(
	xfs_mount_t		*mp,
	xfs_fsop_geom_t		*geo,
	int			new_version)
{

	FUNC2(geo, 0, sizeof(*geo));

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
	FUNC0(sizeof(geo->uuid)==sizeof(mp->m_sb.sb_uuid));
	FUNC1(geo->uuid, &mp->m_sb.sb_uuid, sizeof(mp->m_sb.sb_uuid));
	if (new_version >= 2) {
		geo->sunit = mp->m_sb.sb_unit;
		geo->swidth = mp->m_sb.sb_width;
	}
	if (new_version >= 3) {
		geo->version = XFS_FSOP_GEOM_VERSION;
		geo->flags =
			(FUNC5(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_ATTR : 0) |
			(FUNC12(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_NLINK : 0) |
			(FUNC14(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_QUOTA : 0) |
			(FUNC3(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_IALIGN : 0) |
			(FUNC7(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_DALIGN : 0) |
			(FUNC16(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_SHARED : 0) |
			(FUNC9(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_EXTFLG : 0) |
			(FUNC8(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_DIRV2 : 0) |
			(FUNC15(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_SECTOR : 0) |
			(FUNC4(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_DIRV2CI : 0) |
			(FUNC10(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_LAZYSB : 0) |
			(FUNC6(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_ATTR2 : 0) |
			(FUNC13(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_PROJID32 : 0);
		geo->logsectsize = FUNC15(&mp->m_sb) ?
				mp->m_sb.sb_logsectsize : BBSIZE;
		geo->rtsectsize = mp->m_sb.sb_blocksize;
		geo->dirblocksize = mp->m_dirblksize;
	}
	if (new_version >= 4) {
		geo->flags |=
			(FUNC11(&mp->m_sb) ?
				XFS_FSOP_GEOM_FLAGS_LOGV2 : 0);
		geo->logsunit = mp->m_sb.sb_logsunit;
	}
	return 0;
}