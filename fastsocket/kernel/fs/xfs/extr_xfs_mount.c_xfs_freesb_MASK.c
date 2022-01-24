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
struct xfs_mount {struct xfs_buf* m_sb_bp; } ;
struct xfs_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*) ; 

void
FUNC2(
	struct xfs_mount	*mp)
{
	struct xfs_buf		*bp = mp->m_sb_bp;

	FUNC0(bp);
	mp->m_sb_bp = NULL;
	FUNC1(bp);
}