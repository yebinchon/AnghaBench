#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_off_t ;
struct TYPE_9__ {int di_mode; scalar_t__ di_format; } ;
struct TYPE_10__ {TYPE_1__ i_d; int /*<<< orphan*/  i_mount; } ;
typedef  TYPE_2__ xfs_inode_t ;
typedef  int /*<<< orphan*/  filldir_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIO ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int*) ; 
 int FUNC7 (TYPE_2__*,void*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xs_dir_getdents ; 

int
FUNC9(
	xfs_inode_t	*dp,
	void		*dirent,
	size_t		bufsize,
	xfs_off_t	*offset,
	filldir_t	filldir)
{
	int		rval;		/* return value */
	int		v;		/* type-checking value */

	FUNC4(dp);

	if (FUNC2(dp->i_mount))
		return FUNC1(EIO);

	FUNC0((dp->i_d.di_mode & S_IFMT) == S_IFDIR);
	FUNC3(xs_dir_getdents);

	if (dp->i_d.di_format == XFS_DINODE_FMT_LOCAL)
		rval = FUNC8(dp, dirent, offset, filldir);
	else if ((rval = FUNC6(NULL, dp, &v)))
		;
	else if (v)
		rval = FUNC5(dp, dirent, offset, filldir);
	else
		rval = FUNC7(dp, dirent, bufsize, offset,
					      filldir);
	return rval;
}