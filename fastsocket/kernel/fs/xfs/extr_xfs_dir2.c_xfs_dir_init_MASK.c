#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  t_mountp; } ;
typedef  TYPE_2__ xfs_trans_t ;
struct TYPE_9__ {int di_mode; } ;
struct TYPE_11__ {int /*<<< orphan*/  i_ino; TYPE_1__ i_d; } ;
typedef  TYPE_3__ xfs_inode_t ;
struct TYPE_12__ {TYPE_2__* trans; TYPE_3__* dp; } ;
typedef  TYPE_4__ xfs_da_args_t ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(
	xfs_trans_t	*tp,
	xfs_inode_t	*dp,
	xfs_inode_t	*pdp)
{
	xfs_da_args_t	args;
	int		error;

	FUNC1((char *)&args, 0, sizeof(args));
	args.dp = dp;
	args.trans = tp;
	FUNC0((dp->i_d.di_mode & S_IFMT) == S_IFDIR);
	if ((error = FUNC3(tp->t_mountp, pdp->i_ino)))
		return error;
	return FUNC2(&args, pdp->i_ino);
}