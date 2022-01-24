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
struct gfs2_glock {int /*<<< orphan*/  gl_revokes; int /*<<< orphan*/  gl_ail_count; int /*<<< orphan*/  gl_ail_list; int /*<<< orphan*/  gl_lru; int /*<<< orphan*/  gl_holders; int /*<<< orphan*/  gl_spin; int /*<<< orphan*/  gl_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *foo)
{
	struct gfs2_glock *gl = foo;

	FUNC0(&gl->gl_list);
	FUNC3(&gl->gl_spin);
	FUNC1(&gl->gl_holders);
	FUNC1(&gl->gl_lru);
	FUNC1(&gl->gl_ail_list);
	FUNC2(&gl->gl_ail_count, 0);
	FUNC2(&gl->gl_revokes, 0);
}