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
struct gfs2_statfs_change_host {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int /*<<< orphan*/  rd_gl; } ;
struct gfs2_holder {TYPE_1__* gh_gl; } ;
struct TYPE_2__ {int /*<<< orphan*/  gl_object; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GL_ASYNC ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_holder*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 scalar_t__ FUNC2 (struct gfs2_holder*) ; 
 int FUNC3 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_holder*) ; 
 struct gfs2_rgrpd* FUNC5 (struct gfs2_sbd*) ; 
 struct gfs2_rgrpd* FUNC6 (struct gfs2_rgrpd*) ; 
 struct gfs2_holder* FUNC7 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_statfs_change_host*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct gfs2_statfs_change_host*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct gfs2_sbd *sdp, struct gfs2_statfs_change_host *sc)
{
	struct gfs2_rgrpd *rgd_next;
	struct gfs2_holder *gha, *gh;
	unsigned int slots = 64;
	unsigned int x;
	int done;
	int error = 0, err;

	FUNC9(sc, 0, sizeof(struct gfs2_statfs_change_host));
	gha = FUNC7(slots, sizeof(struct gfs2_holder), GFP_KERNEL);
	if (!gha)
		return -ENOMEM;

	rgd_next = FUNC5(sdp);

	for (;;) {
		done = 1;

		for (x = 0; x < slots; x++) {
			gh = gha + x;

			if (gh->gh_gl && FUNC2(gh)) {
				err = FUNC3(gh);
				if (err) {
					FUNC4(gh);
					error = err;
				} else {
					if (!error)
						error = FUNC11(
							gh->gh_gl->gl_object, sc);
					FUNC0(gh);
				}
			}

			if (gh->gh_gl)
				done = 0;
			else if (rgd_next && !error) {
				error = FUNC1(rgd_next->rd_gl,
							   LM_ST_SHARED,
							   GL_ASYNC,
							   gh);
				rgd_next = FUNC6(rgd_next);
				done = 0;
			}

			if (FUNC10(current))
				error = -ERESTARTSYS;
		}

		if (done)
			break;

		FUNC12();
	}

	FUNC8(gha);
	return error;
}