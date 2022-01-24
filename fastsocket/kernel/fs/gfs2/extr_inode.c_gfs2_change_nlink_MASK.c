#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ i_nlink; int /*<<< orphan*/  i_ctime; } ;
struct gfs2_inode {TYPE_1__ i_inode; int /*<<< orphan*/  i_gl; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 int FUNC6 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

int FUNC11(struct gfs2_inode *ip, int diff)
{
	struct buffer_head *dibh;
	u32 nlink;
	int error;

	FUNC0(diff != 1 && diff != -1);
	nlink = ip->i_inode.i_nlink + diff;

	/* If we are reducing the nlink count, but the new value ends up being
	   bigger than the old one, we must have underflowed. */
	if (diff < 0 && nlink > ip->i_inode.i_nlink) {
		if (FUNC3(ip))
			FUNC5(ip);
		return -EIO;
	}

	error = FUNC6(ip, &dibh);
	if (error)
		return error;

	if (diff > 0)
		FUNC9(&ip->i_inode);
	else
		FUNC2(&ip->i_inode);

	ip->i_inode.i_ctime = CURRENT_TIME;

	FUNC7(ip->i_gl, dibh);
	FUNC4(ip, dibh->b_data);
	FUNC1(dibh);
	FUNC10(&ip->i_inode);

	if (ip->i_inode.i_nlink == 0)
		FUNC8(&ip->i_inode); /* mark inode unlinked */

	return error;
}