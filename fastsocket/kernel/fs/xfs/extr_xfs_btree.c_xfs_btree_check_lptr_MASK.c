#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ xfs_dfsbno_t ;
struct xfs_btree_cur {int /*<<< orphan*/  bc_mp; } ;

/* Variables and functions */
 scalar_t__ NULLDFSBNO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int					/* error (0 or EFSCORRUPTED) */
FUNC2(
	struct xfs_btree_cur	*cur,	/* btree cursor */
	xfs_dfsbno_t		bno,	/* btree block disk address */
	int			level)	/* btree block level */
{
	FUNC1(
		level > 0 &&
		bno != NULLDFSBNO &&
		FUNC0(cur->bc_mp, bno));
	return 0;
}