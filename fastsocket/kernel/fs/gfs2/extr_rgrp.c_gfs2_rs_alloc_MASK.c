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
struct gfs2_inode {int /*<<< orphan*/  i_rw_mutex; TYPE_1__* i_res; } ;
struct TYPE_2__ {int /*<<< orphan*/  rs_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gfs2_rsrv_cachep ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct gfs2_inode *ip)
{
	int error = 0;

	FUNC0(&ip->i_rw_mutex);
	if (ip->i_res)
		goto out;

	ip->i_res = FUNC1(gfs2_rsrv_cachep, GFP_NOFS);
	if (!ip->i_res) {
		error = -ENOMEM;
		goto out;
	}

	FUNC2(&ip->i_res->rs_node);
 out:
	FUNC3(&ip->i_rw_mutex);
	return error;
}