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
struct gfs2_glock {int /*<<< orphan*/  gl_flags; int /*<<< orphan*/  gl_lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLF_LRU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lru_count ; 
 int /*<<< orphan*/  lru_list ; 
 int /*<<< orphan*/  lru_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct gfs2_glock *gl)
{
	FUNC5(&lru_lock);

	if (!FUNC3(&gl->gl_lru))
		FUNC2(&gl->gl_lru);
	else
		FUNC0(&lru_count);

	FUNC1(&gl->gl_lru, &lru_list);
	FUNC4(GLF_LRU, &gl->gl_flags);
	FUNC6(&lru_lock);
}