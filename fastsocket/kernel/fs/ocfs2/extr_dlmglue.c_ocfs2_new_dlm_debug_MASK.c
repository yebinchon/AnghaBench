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
struct ocfs2_dlm_debug {int /*<<< orphan*/ * d_locking_state; int /*<<< orphan*/  d_lockres_tracking; int /*<<< orphan*/  d_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ocfs2_dlm_debug* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct ocfs2_dlm_debug *FUNC4(void)
{
	struct ocfs2_dlm_debug *dlm_debug;

	dlm_debug = FUNC1(sizeof(struct ocfs2_dlm_debug), GFP_KERNEL);
	if (!dlm_debug) {
		FUNC3(-ENOMEM);
		goto out;
	}

	FUNC2(&dlm_debug->d_refcnt);
	FUNC0(&dlm_debug->d_lockres_tracking);
	dlm_debug->d_locking_state = NULL;
out:
	return dlm_debug;
}