#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ sb_agcount; scalar_t__ sb_agblocks; int sb_inopblog; } ;
struct TYPE_13__ {TYPE_1__ m_sb; } ;
typedef  TYPE_2__ xfs_mount_t ;
typedef  scalar_t__ xfs_ino_t ;
typedef  scalar_t__ xfs_agnumber_t ;
typedef  int /*<<< orphan*/  xfs_agino_t ;
typedef  scalar_t__ xfs_agblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFSCORRUPTED ; 
 scalar_t__ FUNC0 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_ERRLEVEL_LOW ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  XFS_ERRTAG_DIR_INO_VALIDATE ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__) ; 
 int FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,int) ; 
 int /*<<< orphan*/  XFS_RANDOM_DIR_INO_VALIDATE ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,unsigned long long) ; 

int
FUNC10(
	xfs_mount_t	*mp,
	xfs_ino_t	ino)
{
	xfs_agblock_t	agblkno;
	xfs_agino_t	agino;
	xfs_agnumber_t	agno;
	int		ino_ok;
	int		ioff;

	agno = FUNC4(mp, ino);
	agblkno = FUNC3(mp, ino);
	ioff = FUNC5(mp, ino);
	agino = FUNC6(mp, agblkno, ioff);
	ino_ok =
		agno < mp->m_sb.sb_agcount &&
		agblkno < mp->m_sb.sb_agblocks &&
		agblkno != 0 &&
		ioff < (1 << mp->m_sb.sb_inopblog) &&
		FUNC0(mp, agno, agino) == ino;
	if (FUNC8(FUNC7(!ino_ok, mp, XFS_ERRTAG_DIR_INO_VALIDATE,
			XFS_RANDOM_DIR_INO_VALIDATE))) {
		FUNC9(mp, "Invalid inode number 0x%Lx",
				(unsigned long long) ino);
		FUNC2("xfs_dir_ino_validate", XFS_ERRLEVEL_LOW, mp);
		return FUNC1(EFSCORRUPTED);
	}
	return 0;
}