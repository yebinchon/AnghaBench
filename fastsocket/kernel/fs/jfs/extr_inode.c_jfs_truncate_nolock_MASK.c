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
typedef  int /*<<< orphan*/  tid_t ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_sb; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  commit_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COMMIT_Nolink ; 
 int COMMIT_PWMAP ; 
 int COMMIT_TRUNCATE ; 
 int COMMIT_WMAP ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct inode*,scalar_t__,int) ; 

void FUNC10(struct inode *ip, loff_t length)
{
	loff_t newsize;
	tid_t tid;

	FUNC0(length >= 0);

	if (FUNC5(COMMIT_Nolink, ip)) {
		FUNC9(0, ip, length, COMMIT_WMAP);
		return;
	}

	do {
		tid = FUNC6(ip->i_sb, 0);

		/*
		 * The commit_mutex cannot be taken before txBegin.
		 * txBegin may block and there is a chance the inode
		 * could be marked dirty and need to be committed
		 * before txBegin unblocks
		 */
		FUNC3(&FUNC1(ip)->commit_mutex);

		newsize = FUNC9(tid, ip, length,
				     COMMIT_TRUNCATE | COMMIT_PWMAP);
		if (newsize < 0) {
			FUNC8(tid);
			FUNC4(&FUNC1(ip)->commit_mutex);
			break;
		}

		ip->i_mtime = ip->i_ctime = CURRENT_TIME;
		FUNC2(ip);

		FUNC7(tid, 1, &ip, 0);
		FUNC8(tid);
		FUNC4(&FUNC1(ip)->commit_mutex);
	} while (newsize > length);	/* Truncate isn't always atomic */
}