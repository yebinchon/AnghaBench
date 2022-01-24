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
struct inode {scalar_t__ i_nlink; } ;
struct TYPE_2__ {struct gfs2_glock* gh_gl; } ;
struct gfs2_inode {TYPE_1__ i_iopen_gh; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_flags; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  GLF_DEMOTE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct inode *inode)
{
	struct gfs2_inode *ip = FUNC0(inode);

	if (inode->i_nlink) {
		struct gfs2_glock *gl = ip->i_iopen_gh.gh_gl;
		if (gl && FUNC3(GLF_DEMOTE, &gl->gl_flags))
			FUNC1(inode);
	}
	FUNC2(inode);
}