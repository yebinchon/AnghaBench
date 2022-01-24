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
struct ocfs2_super {int dummy; } ;
struct ocfs2_dentry_lock {int /*<<< orphan*/  dl_lockres; } ;
struct dentry {int /*<<< orphan*/  d_sb; struct ocfs2_dentry_lock* d_fsdata; } ;

/* Variables and functions */
 int DLM_LOCK_EX ; 
 int DLM_LOCK_PR ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_super*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_super*) ; 

void FUNC3(struct dentry *dentry, int ex)
{
	int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
	struct ocfs2_dentry_lock *dl = dentry->d_fsdata;
	struct ocfs2_super *osb = FUNC0(dentry->d_sb);

	if (!FUNC2(osb))
		FUNC1(osb, &dl->dl_lockres, level);
}