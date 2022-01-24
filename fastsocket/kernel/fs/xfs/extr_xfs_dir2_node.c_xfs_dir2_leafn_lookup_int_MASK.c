#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_dabuf_t ;
typedef  int /*<<< orphan*/  xfs_da_state_t ;
struct TYPE_5__ {int op_flags; } ;
typedef  TYPE_1__ xfs_da_args_t ;

/* Variables and functions */
 int XFS_DA_OP_ADDNAME ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int*,int /*<<< orphan*/ *) ; 

int
FUNC2(
	xfs_dabuf_t		*bp,		/* leaf buffer */
	xfs_da_args_t		*args,		/* operation arguments */
	int			*indexp,	/* out: leaf entry index */
	xfs_da_state_t		*state)		/* state to fill in */
{
	if (args->op_flags & XFS_DA_OP_ADDNAME)
		return FUNC0(bp, args, indexp,
							state);
	return FUNC1(bp, args, indexp, state);
}