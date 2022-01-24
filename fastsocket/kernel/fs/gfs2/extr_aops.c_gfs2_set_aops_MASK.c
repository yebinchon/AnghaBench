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
struct inode {TYPE_1__* i_mapping; } ;
struct gfs2_inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct gfs2_inode*) ; 
 scalar_t__ FUNC3 (struct gfs2_inode*) ; 
 scalar_t__ FUNC4 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  gfs2_jdata_aops ; 
 int /*<<< orphan*/  gfs2_ordered_aops ; 
 int /*<<< orphan*/  gfs2_writeback_aops ; 

void FUNC5(struct inode *inode)
{
	struct gfs2_inode *ip = FUNC1(inode);

	if (FUNC4(ip))
		inode->i_mapping->a_ops = &gfs2_writeback_aops;
	else if (FUNC3(ip))
		inode->i_mapping->a_ops = &gfs2_ordered_aops;
	else if (FUNC2(ip))
		inode->i_mapping->a_ops = &gfs2_jdata_aops;
	else
		FUNC0();
}