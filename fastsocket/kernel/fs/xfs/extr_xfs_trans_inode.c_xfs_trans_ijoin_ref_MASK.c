#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {TYPE_1__* i_itemp; } ;
struct TYPE_2__ {int /*<<< orphan*/  ili_lock_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_trans*,struct xfs_inode*) ; 

void
FUNC2(
	struct xfs_trans	*tp,
	struct xfs_inode	*ip,
	uint			lock_flags)
{
	FUNC1(tp, ip);
	FUNC0(ip);
	ip->i_itemp->ili_lock_flags = lock_flags;
}