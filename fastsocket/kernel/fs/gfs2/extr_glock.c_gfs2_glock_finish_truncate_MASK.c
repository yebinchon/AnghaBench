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
struct gfs2_inode {struct gfs2_glock* i_gl; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_spin; int /*<<< orphan*/  gl_flags; int /*<<< orphan*/  gl_sbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLF_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_glock*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct gfs2_inode *ip)
{
	struct gfs2_glock *gl = ip->i_gl;
	int ret;

	ret = FUNC2(ip);
	FUNC1(gl->gl_sbd, ret == 0);

	FUNC4(&gl->gl_spin);
	FUNC0(GLF_LOCK, &gl->gl_flags);
	FUNC3(gl, 1);
	FUNC5(&gl->gl_spin);
}