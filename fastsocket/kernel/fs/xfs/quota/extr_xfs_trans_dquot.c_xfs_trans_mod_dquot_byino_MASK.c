#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * t_dqinfo; TYPE_3__* t_mountp; } ;
typedef  TYPE_2__ xfs_trans_t ;
struct TYPE_13__ {scalar_t__ sb_uquotino; scalar_t__ sb_gquotino; } ;
struct TYPE_15__ {TYPE_1__ m_sb; } ;
typedef  TYPE_3__ xfs_mount_t ;
struct TYPE_16__ {scalar_t__ i_ino; scalar_t__ i_gdquot; scalar_t__ i_udquot; } ;
typedef  TYPE_4__ xfs_inode_t ;
typedef  int /*<<< orphan*/  uint ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,long) ; 

void
FUNC6(
	xfs_trans_t	*tp,
	xfs_inode_t	*ip,
	uint		field,
	long		delta)
{
	xfs_mount_t	*mp = tp->t_mountp;

	if (!FUNC2(mp) ||
	    !FUNC1(mp) ||
	    ip->i_ino == mp->m_sb.sb_uquotino ||
	    ip->i_ino == mp->m_sb.sb_gquotino)
		return;

	if (tp->t_dqinfo == NULL)
		FUNC4(tp);

	if (FUNC3(mp) && ip->i_udquot)
		(void) FUNC5(tp, ip->i_udquot, field, delta);
	if (FUNC0(mp) && ip->i_gdquot)
		(void) FUNC5(tp, ip->i_gdquot, field, delta);
}