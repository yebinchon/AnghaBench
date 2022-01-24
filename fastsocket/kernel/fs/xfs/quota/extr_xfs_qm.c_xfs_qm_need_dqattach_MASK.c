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
struct TYPE_2__ {scalar_t__ sb_uquotino; scalar_t__ sb_gquotino; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_inode {scalar_t__ i_ino; struct xfs_mount* i_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,struct xfs_inode*) ; 

__attribute__((used)) static bool
FUNC3(
	struct xfs_inode	*ip)
{
	struct xfs_mount	*mp = ip->i_mount;

	if (!FUNC1(mp))
		return false;
	if (!FUNC0(mp))
		return false;
	if (!FUNC2(mp, ip))
		return false;
	if (ip->i_ino == mp->m_sb.sb_uquotino ||
	    ip->i_ino == mp->m_sb.sb_gquotino)
		return false;
	return true;
}