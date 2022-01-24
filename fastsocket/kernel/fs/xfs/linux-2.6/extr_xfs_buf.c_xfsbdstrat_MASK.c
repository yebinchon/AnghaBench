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
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xfs_mount*) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf*) ; 

void
FUNC4(
	struct xfs_mount	*mp,
	struct xfs_buf		*bp)
{
	if (FUNC0(mp)) {
		FUNC1(bp, _RET_IP_);
		FUNC2(bp);
		return;
	}

	FUNC3(bp);
}