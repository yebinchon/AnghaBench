#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_writecount; } ;
struct gfs2_inode {int /*<<< orphan*/  i_rw_mutex; TYPE_1__* i_res; struct inode i_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  rs_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  gfs2_rsrv_cachep ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct gfs2_inode *ip)
{
	struct inode *inode = &ip->i_inode;

	FUNC2(&ip->i_rw_mutex);
	if (ip->i_res && FUNC1(&inode->i_writecount) <= 1) {
		FUNC3(ip->i_res);
		FUNC0(ip->i_res->rs_free);
		FUNC4(gfs2_rsrv_cachep, ip->i_res);
		ip->i_res = NULL;
	}
	FUNC5(&ip->i_rw_mutex);
}