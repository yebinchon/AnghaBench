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
typedef  scalar_t__ uint ;
struct TYPE_2__ {int sb_inodesize; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MINABTPTRS ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct xfs_mount*) ; 

uint
FUNC3(
	struct xfs_inode	*ip)
{
	struct xfs_mount	*mp = ip->i_mount;
	uint			offset;

	if (mp->m_sb.sb_inodesize == 256) {
		offset = FUNC2(mp) -
				FUNC1(MINABTPTRS);
	} else {
		offset = FUNC1(6 * MINABTPTRS);
	}

	FUNC0(offset < FUNC2(mp));
	return offset;
}