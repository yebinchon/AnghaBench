#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  gh_flags; TYPE_1__* gh_gl; } ;
struct gfs2_inode {TYPE_3__ i_iopen_gh; TYPE_2__* i_gl; } ;
struct TYPE_6__ {int /*<<< orphan*/  gl_work; int /*<<< orphan*/ * gl_object; } ;
struct TYPE_5__ {int /*<<< orphan*/ * gl_object; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  GL_NOCACHE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode*) ; 

__attribute__((used)) static void FUNC8(struct inode *inode)
{
	struct gfs2_inode *ip = FUNC0(inode);

	FUNC2(ip);
	FUNC7(ip);
	FUNC6(ip);
	ip->i_gl->gl_object = NULL;
	FUNC1(&ip->i_gl->gl_work);
	FUNC3(ip->i_gl);
	FUNC5(ip->i_gl);
	ip->i_gl = NULL;
	if (ip->i_iopen_gh.gh_gl) {
		ip->i_iopen_gh.gh_gl->gl_object = NULL;
		ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
		FUNC4(&ip->i_iopen_gh);
	}
}