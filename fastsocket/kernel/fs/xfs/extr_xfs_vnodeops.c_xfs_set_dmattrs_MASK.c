#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_7__ {int /*<<< orphan*/  di_dmstate; int /*<<< orphan*/  di_dmevmask; } ;
struct TYPE_8__ {TYPE_1__ i_d; int /*<<< orphan*/ * i_mount; } ;
typedef  TYPE_2__ xfs_inode_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  EPERM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int /*<<< orphan*/  XFS_TRANS_SET_DMATTRS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(
	xfs_inode_t     *ip,
	u_int		evmask,
	u_int16_t	state)
{
	xfs_mount_t	*mp = ip->i_mount;
	xfs_trans_t	*tp;
	int		error;

	if (!FUNC3(CAP_SYS_ADMIN))
		return FUNC0(EPERM);

	if (FUNC1(mp))
		return FUNC0(EIO);

	tp = FUNC5(mp, XFS_TRANS_SET_DMATTRS);
	error = FUNC10(tp, 0, FUNC2 (mp), 0, 0, 0);
	if (error) {
		FUNC6(tp, 0);
		return error;
	}
	FUNC4(ip, XFS_ILOCK_EXCL);
	FUNC8(tp, ip, XFS_ILOCK_EXCL);

	ip->i_d.di_dmevmask = evmask;
	ip->i_d.di_dmstate  = state;

	FUNC9(tp, ip, XFS_ILOG_CORE);
	error = FUNC7(tp, 0);

	return error;
}