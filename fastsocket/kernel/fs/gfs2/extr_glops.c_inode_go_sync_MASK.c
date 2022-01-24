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
struct TYPE_2__ {struct address_space* i_mapping; int /*<<< orphan*/  i_mode; } ;
struct gfs2_inode {TYPE_1__ i_inode; int /*<<< orphan*/  i_flags; } ;
struct gfs2_glock {scalar_t__ gl_state; int /*<<< orphan*/  gl_flags; int /*<<< orphan*/  gl_sbd; struct gfs2_inode* gl_object; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GIF_SW_PAGED ; 
 int /*<<< orphan*/  GLF_DIRTY ; 
 scalar_t__ LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_glock*) ; 
 struct address_space* FUNC6 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC8 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct gfs2_glock *gl)
{
	struct gfs2_inode *ip = gl->gl_object;
	struct address_space *metamapping = FUNC6(gl);
	int error;

	if (ip && !FUNC1(ip->i_inode.i_mode))
		ip = NULL;
	if (ip && FUNC10(GIF_SW_PAGED, &ip->i_flags))
		FUNC11(ip->i_inode.i_mapping, 0, 0);
	if (!FUNC10(GLF_DIRTY, &gl->gl_flags))
		return;

	FUNC0(gl->gl_state != LM_ST_EXCLUSIVE);

	FUNC7(gl->gl_sbd, gl);
	FUNC4(metamapping);
	if (ip) {
		struct address_space *mapping = ip->i_inode.i_mapping;
		FUNC4(mapping);
		error = FUNC3(mapping);
		FUNC8(mapping, error);
	}
	error = FUNC3(metamapping);
	FUNC8(metamapping, error);
	FUNC5(gl);
	/*
	 * Writeback of the data mapping may cause the dirty flag to be set
	 * so we have to clear it again here.
	 */
	FUNC9();
	FUNC2(GLF_DIRTY, &gl->gl_flags);
}