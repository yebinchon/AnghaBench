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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct gfs2_sbd {TYPE_1__* sd_vfs; } ;
struct TYPE_2__ {scalar_t__ s_blocksize; } ;

/* Variables and functions */
 scalar_t__ GFS2_JTRUNC_REVOKES ; 
 struct gfs2_sbd* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  RES_DINODE ; 
 int FUNC1 (struct gfs2_sbd*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, u64 oldsize, u64 newsize)
{
	struct gfs2_sbd *sdp = FUNC0(inode);
	u64 max_chunk = GFS2_JTRUNC_REVOKES * sdp->sd_vfs->s_blocksize;
	u64 chunk;
	int error;

	while (oldsize != newsize) {
		chunk = oldsize - newsize;
		if (chunk > max_chunk)
			chunk = max_chunk;
		FUNC3(inode, oldsize, oldsize - chunk);
		oldsize -= chunk;
		FUNC2(sdp);
		error = FUNC1(sdp, RES_DINODE, GFS2_JTRUNC_REVOKES);
		if (error)
			return error;
	}

	return 0;
}