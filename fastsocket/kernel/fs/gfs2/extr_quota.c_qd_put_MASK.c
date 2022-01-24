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
struct gfs2_quota_data {int /*<<< orphan*/  qd_reclaim; int /*<<< orphan*/  qd_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qd_lru_count ; 
 int /*<<< orphan*/  qd_lru_list ; 
 int /*<<< orphan*/  qd_lru_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gfs2_quota_data *qd)
{
	if (FUNC0(&qd->qd_count, &qd_lru_lock)) {
		/* Add to the reclaim list */
		FUNC2(&qd->qd_reclaim, &qd_lru_list);
		FUNC1(&qd_lru_count);
		FUNC3(&qd_lru_lock);
	}
}