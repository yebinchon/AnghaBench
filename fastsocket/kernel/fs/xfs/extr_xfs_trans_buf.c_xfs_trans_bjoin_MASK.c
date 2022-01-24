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
struct xfs_trans {int dummy; } ;
struct xfs_buf {int /*<<< orphan*/  b_fspriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(
	struct xfs_trans	*tp,
	struct xfs_buf		*bp)
{
	FUNC0(tp, bp, 0);
	FUNC1(bp->b_fspriv);
}