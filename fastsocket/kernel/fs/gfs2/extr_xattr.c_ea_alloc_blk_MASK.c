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
typedef  int /*<<< orphan*/  u64 ;
struct gfs2_sbd {int /*<<< orphan*/  sd_jbsize; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_ea_header {scalar_t__ ea_num_ptrs; int /*<<< orphan*/  ea_flags; int /*<<< orphan*/  ea_type; int /*<<< orphan*/  ea_rec_len; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_EAFLAG_LAST ; 
 int /*<<< orphan*/  GFS2_EATYPE_UNUSED ; 
 struct gfs2_ea_header* FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  GFS2_FORMAT_EA ; 
 int /*<<< orphan*/  GFS2_METATYPE_EA ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct gfs2_inode*,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,int) ; 
 struct buffer_head* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct gfs2_inode *ip, struct buffer_head **bhp)
{
	struct gfs2_sbd *sdp = FUNC1(&ip->i_inode);
	struct gfs2_ea_header *ea;
	unsigned int n = 1;
	u64 block;
	int error;

	error = FUNC4(ip, &block, &n, 0, NULL);
	if (error)
		return error;
	FUNC9(sdp, block, 1);
	*bhp = FUNC6(ip->i_gl, block);
	FUNC8(ip->i_gl, *bhp);
	FUNC7(*bhp, GFS2_METATYPE_EA, GFS2_FORMAT_EA);
	FUNC5(*bhp, sizeof(struct gfs2_meta_header));

	ea = FUNC0(*bhp);
	ea->ea_rec_len = FUNC2(sdp->sd_jbsize);
	ea->ea_type = GFS2_EATYPE_UNUSED;
	ea->ea_flags = GFS2_EAFLAG_LAST;
	ea->ea_num_ptrs = 0;

	FUNC3(&ip->i_inode, 1);

	return 0;
}