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
struct ocfs2_lock_res {int /*<<< orphan*/  l_debug_list; int /*<<< orphan*/  l_name; } ;
struct ocfs2_dlm_debug {int /*<<< orphan*/  d_lockres_tracking; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_dlm_tracking_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ocfs2_lock_res *res,
				       struct ocfs2_dlm_debug *dlm_debug)
{
	FUNC1(0, "Add tracking for lockres %s\n", res->l_name);

	FUNC2(&ocfs2_dlm_tracking_lock);
	FUNC0(&res->l_debug_list, &dlm_debug->d_lockres_tracking);
	FUNC3(&ocfs2_dlm_tracking_lock);
}