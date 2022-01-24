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
struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_super {struct ocfs2_lock_res osb_rename_lockres; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_EX ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ocfs2_super*,struct ocfs2_lock_res*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ocfs2_super*) ; 
 scalar_t__ FUNC3 (struct ocfs2_super*) ; 

int FUNC4(struct ocfs2_super *osb)
{
	int status;
	struct ocfs2_lock_res *lockres = &osb->osb_rename_lockres;

	if (FUNC2(osb))
		return -EROFS;

	if (FUNC3(osb))
		return 0;

	status = FUNC1(osb, lockres, DLM_LOCK_EX, 0, 0);
	if (status < 0)
		FUNC0(status);

	return status;
}