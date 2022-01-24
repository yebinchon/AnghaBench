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
struct gfs2_rgrpd {int dummy; } ;
struct gfs2_glock {scalar_t__ gl_state; int /*<<< orphan*/  gl_spin; struct gfs2_rgrpd* gl_object; int /*<<< orphan*/  gl_sbd; int /*<<< orphan*/  gl_flags; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GLF_DIRTY ; 
 scalar_t__ LM_ST_EXCLUSIVE ; 
 int FUNC1 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_rgrpd*) ; 
 struct address_space* FUNC5 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC7 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct gfs2_glock *gl)
{
	struct address_space *metamapping = FUNC5(gl);
	struct gfs2_rgrpd *rgd;
	int error;

	if (!FUNC10(GLF_DIRTY, &gl->gl_flags))
		return;
	FUNC0(gl->gl_state != LM_ST_EXCLUSIVE);

	FUNC6(gl->gl_sbd, gl);
	FUNC2(metamapping);
	error = FUNC1(metamapping);
        FUNC7(metamapping, error);
	FUNC3(gl);

	FUNC8(&gl->gl_spin);
	rgd = gl->gl_object;
	if (rgd)
		FUNC4(rgd);
	FUNC9(&gl->gl_spin);
}