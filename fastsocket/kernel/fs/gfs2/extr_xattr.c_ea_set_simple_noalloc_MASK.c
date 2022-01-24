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
struct TYPE_2__ {int /*<<< orphan*/  i_ctime; } ;
struct gfs2_inode {TYPE_1__ i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_ea_request {int dummy; } ;
struct gfs2_ea_header {int dummy; } ;
struct ea_set {scalar_t__ es_el; scalar_t__ ea_split; struct gfs2_ea_request* es_er; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ RES_DINODE ; 
 int RES_EATTR ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_inode*,scalar_t__) ; 
 struct gfs2_ea_header* FUNC3 (struct gfs2_ea_header*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*,struct gfs2_ea_header*,struct gfs2_ea_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct gfs2_inode *ip, struct buffer_head *bh,
				 struct gfs2_ea_header *ea, struct ea_set *es)
{
	struct gfs2_ea_request *er = es->es_er;
	struct buffer_head *dibh;
	int error;

	error = FUNC8(FUNC0(&ip->i_inode), RES_DINODE + 2 * RES_EATTR, 0);
	if (error)
		return error;

	FUNC7(ip->i_gl, bh);

	if (es->ea_split)
		ea = FUNC3(ea);

	FUNC4(ip, ea, er);

	if (es->es_el)
		FUNC2(ip, es->es_el);

	error = FUNC6(ip, &dibh);
	if (error)
		goto out;
	ip->i_inode.i_ctime = CURRENT_TIME;
	FUNC7(ip->i_gl, dibh);
	FUNC5(ip, dibh->b_data);
	FUNC1(dibh);
out:
	FUNC9(FUNC0(&ip->i_inode));
	return error;
}