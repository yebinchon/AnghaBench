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
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_FORMAT_JD ; 
 int /*<<< orphan*/  GFS2_METATYPE_JD ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,int) ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct buffer_head*) ; 

int FUNC4(struct gfs2_inode *ip, u64 block,
			    struct buffer_head **bhp)
{
	struct buffer_head *bh;

	bh = FUNC1(ip->i_gl, block);
	FUNC3(ip->i_gl, bh);
	FUNC2(bh, GFS2_METATYPE_JD, GFS2_FORMAT_JD);
	FUNC0(bh, sizeof(struct gfs2_meta_header));
	*bhp = bh;
	return 0;
}