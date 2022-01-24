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
struct gfs2_glock {scalar_t__ gl_state; int /*<<< orphan*/  gl_work; int /*<<< orphan*/  gl_spin; } ;

/* Variables and functions */
 scalar_t__ LM_ST_UNLOCKED ; 
 int /*<<< orphan*/ * FUNC0 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  glock_workqueue ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_glock*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct gfs2_glock *gl)
{
	FUNC2(gl);

	FUNC5(&gl->gl_spin);
	if (FUNC0(gl) == NULL && gl->gl_state != LM_ST_UNLOCKED)
		FUNC3(gl, LM_ST_UNLOCKED, 0, false);
	FUNC6(&gl->gl_spin);
	if (FUNC4(glock_workqueue, &gl->gl_work, 0) == 0)
		FUNC1(gl);
}