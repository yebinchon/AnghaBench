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
struct gfs2_rgrpd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct gfs2_inode {int /*<<< orphan*/  i_no_addr; TYPE_1__ i_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_BLKST_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_rgrpd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_inode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*,struct gfs2_rgrpd*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct gfs2_rgrpd *rgd, struct gfs2_inode *ip)
{
	FUNC0(rgd, ip->i_no_addr);
	FUNC3(ip, rgd, ip->i_no_addr, 1, GFS2_BLKST_FREE);
	FUNC2(ip, -1, ip->i_inode.i_uid, ip->i_inode.i_gid);
	FUNC1(ip, ip->i_no_addr, 1);
}