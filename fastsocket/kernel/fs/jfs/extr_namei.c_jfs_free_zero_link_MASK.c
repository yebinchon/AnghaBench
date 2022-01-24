#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pxd_lock {int /*<<< orphan*/  pxd; void* flag; } ;
struct maplock {int index; } ;
struct inode {int i_mode; scalar_t__ i_size; } ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_5__ {int flag; } ;
struct TYPE_6__ {TYPE_1__ acl; TYPE_1__ ea; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_WMAP ; 
 int DXD_EXTENT ; 
 scalar_t__ IDATASIZE ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct inode*) ; 
 int FUNC6 (TYPE_1__*) ; 
 void* mlckFREEPXD ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct pxd_lock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct inode *ip)
{
	int type;

	FUNC5("jfs_free_zero_link: ip = 0x%p", ip);

	/* return if not reg or symbolic link or if size is
	 * already ok.
	 */
	type = ip->i_mode & S_IFMT;

	switch (type) {
	case S_IFREG:
		break;
	case S_IFLNK:
		/* if its contained in inode nothing to do */
		if (ip->i_size < IDATASIZE)
			return;
		break;
	default:
		return;
	}

	/*
	 * free EA
	 */
	if (FUNC0(ip)->ea.flag & DXD_EXTENT) {
		s64 xaddr = FUNC3(&FUNC0(ip)->ea);
		int xlen = FUNC6(&FUNC0(ip)->ea);
		struct maplock maplock;	/* maplock for COMMIT_WMAP */
		struct pxd_lock *pxdlock;	/* maplock for COMMIT_WMAP */

		/* free EA pages from cache */
		FUNC4(ip, FUNC0(ip)->ea);

		/* free EA extent from working block map */
		maplock.index = 1;
		pxdlock = (struct pxd_lock *) & maplock;
		pxdlock->flag = mlckFREEPXD;
		FUNC1(&pxdlock->pxd, xaddr);
		FUNC2(&pxdlock->pxd, xlen);
		FUNC7(ip, pxdlock, NULL, COMMIT_WMAP);
	}

	/*
	 * free ACL
	 */
	if (FUNC0(ip)->acl.flag & DXD_EXTENT) {
		s64 xaddr = FUNC3(&FUNC0(ip)->acl);
		int xlen = FUNC6(&FUNC0(ip)->acl);
		struct maplock maplock;	/* maplock for COMMIT_WMAP */
		struct pxd_lock *pxdlock;	/* maplock for COMMIT_WMAP */

		FUNC4(ip, FUNC0(ip)->acl);

		/* free ACL extent from working block map */
		maplock.index = 1;
		pxdlock = (struct pxd_lock *) & maplock;
		pxdlock->flag = mlckFREEPXD;
		FUNC1(&pxdlock->pxd, xaddr);
		FUNC2(&pxdlock->pxd, xlen);
		FUNC7(ip, pxdlock, NULL, COMMIT_WMAP);
	}

	/*
	 * free xtree/data (truncate to zero length):
	 * free xtree/data pages from cache, and
	 * free xtree/data blocks from working block map;
	 */
	if (ip->i_size)
		FUNC8(0, ip, 0, COMMIT_WMAP);
}