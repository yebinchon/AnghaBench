#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_mru_cache_t ;
struct TYPE_9__ {int di_mode; } ;
struct TYPE_10__ {TYPE_5__* i_mount; int /*<<< orphan*/  i_ino; TYPE_1__ i_d; } ;
typedef  TYPE_2__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
struct TYPE_11__ {int /*<<< orphan*/ * pip; int /*<<< orphan*/  ag; TYPE_2__* ip; } ;
typedef  TYPE_3__ fstrm_item_t ;
struct TYPE_12__ {int /*<<< orphan*/ * m_filestream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NULLAGNUMBER ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

xfs_agnumber_t
FUNC5(
	xfs_inode_t	*ip)
{
	xfs_mru_cache_t	*cache;
	fstrm_item_t	*item;
	xfs_agnumber_t	ag;
	int		ref;

	if (!(ip->i_d.di_mode & (S_IFREG | S_IFDIR))) {
		FUNC0(0);
		return NULLAGNUMBER;
	}

	cache = ip->i_mount->m_filestream;
	item = FUNC4(cache, ip->i_ino);
	if (!item) {
		FUNC1(ip->i_mount, ip, NULL, NULLAGNUMBER, 0);
		return NULLAGNUMBER;
	}

	FUNC0(ip == item->ip);
	ag = item->ag;
	ref = FUNC2(ip->i_mount, ag);
	FUNC3(cache);

	FUNC1(ip->i_mount, ip, item->pip, ag, ref);
	return ag;
}