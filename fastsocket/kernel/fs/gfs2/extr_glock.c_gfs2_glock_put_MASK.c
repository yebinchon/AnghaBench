#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* ls_ops; } ;
struct gfs2_sbd {TYPE_2__ sd_lockstruct; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_holders; int /*<<< orphan*/  gl_hash; int /*<<< orphan*/  gl_list; int /*<<< orphan*/  gl_ref; struct gfs2_sbd* gl_sbd; } ;
struct address_space {scalar_t__ nrpages; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* lm_put_lock ) (struct gfs2_glock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gfs2_glock*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_glock*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct address_space* FUNC3 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lru_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_glock*) ; 

void FUNC11(struct gfs2_glock *gl)
{
	struct gfs2_sbd *sdp = gl->gl_sbd;
	struct address_space *mapping = FUNC3(gl);

	if (FUNC2(&gl->gl_ref, &lru_lock)) {
		FUNC1(gl);
		FUNC7(&lru_lock);
		FUNC6(gl->gl_hash);
		FUNC4(&gl->gl_list);
		FUNC8(gl->gl_hash);
		FUNC0(gl, !FUNC5(&gl->gl_holders));
		FUNC0(gl, mapping && mapping->nrpages);
		FUNC10(gl);
		sdp->sd_lockstruct.ls_ops->lm_put_lock(gl);
	}
}