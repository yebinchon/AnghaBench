#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_mount_t ;
struct TYPE_5__ {scalar_t__ im_blkno; int /*<<< orphan*/  im_boffset; } ;
struct TYPE_4__ {TYPE_3__ i_imap; } ;
typedef  TYPE_1__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_dinode_t ;
typedef  int /*<<< orphan*/  xfs_buf_t ;
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int XBF_TRYLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 

int
FUNC3(
	xfs_mount_t	*mp,
	xfs_trans_t	*tp,
	xfs_inode_t	*ip,
	xfs_dinode_t	**dipp,
	xfs_buf_t	**bpp,
	uint		buf_flags)
{
	xfs_buf_t	*bp;
	int		error;

	FUNC0(ip->i_imap.im_blkno != 0);

	error = FUNC2(mp, tp, &ip->i_imap, &bp, buf_flags, 0);
	if (error)
		return error;

	if (!bp) {
		FUNC0(buf_flags & XBF_TRYLOCK);
		FUNC0(tp == NULL);
		*bpp = NULL;
		return EAGAIN;
	}

	*dipp = (xfs_dinode_t *)FUNC1(bp, ip->i_imap.im_boffset);
	*bpp = bp;
	return 0;
}