#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct gfs2_sbd {int sd_rgrps; } ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; } ;
typedef  int /*<<< orphan*/  skip ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 

__attribute__((used)) static u32 FUNC2(const struct gfs2_inode *ip)
{
	const struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	u32 skip;

	FUNC1(&skip, sizeof(skip));
	return skip % sdp->sd_rgrps;
}