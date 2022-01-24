#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct address_space* i_mapping; int /*<<< orphan*/  i_mode; } ;
struct gfs2_inode {TYPE_3__ i_inode; int /*<<< orphan*/  i_flags; } ;
struct gfs2_glock {TYPE_1__* gl_sbd; int /*<<< orphan*/  gl_ail_count; struct gfs2_inode* gl_object; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {scalar_t__ sd_rindex_uptodate; int /*<<< orphan*/  sd_rindex; } ;

/* Variables and functions */
 int DIO_METADATA ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIF_INVALID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 struct address_space* FUNC6 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct address_space*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct gfs2_glock *gl, int flags)
{
	struct gfs2_inode *ip = gl->gl_object;

	FUNC4(gl->gl_sbd, !FUNC2(&gl->gl_ail_count));

	if (flags & DIO_METADATA) {
		struct address_space *mapping = FUNC6(gl);
		FUNC9(mapping, 0);
		if (ip) {
			FUNC8(GIF_INVALID, &ip->i_flags);
			FUNC3(&ip->i_inode);
			FUNC5(ip);
		}
	}

	if (ip == FUNC0(gl->gl_sbd->sd_rindex)) {
		FUNC7(gl->gl_sbd, NULL);
		gl->gl_sbd->sd_rindex_uptodate = 0;
	}
	if (ip && FUNC1(ip->i_inode.i_mode))
		FUNC9(ip->i_inode.i_mapping, 0);
}