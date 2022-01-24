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
struct ocfs2_lock_res {scalar_t__ l_blocking; int l_level; int l_requested; int /*<<< orphan*/  l_action; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ DLM_LOCK_NL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_AST_DOWNCONVERT ; 
 int /*<<< orphan*/  OCFS2_LOCK_BUSY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,...) ; 

__attribute__((used)) static unsigned int FUNC6(struct ocfs2_lock_res *lockres,
					      int new_level)
{
	FUNC2(&lockres->l_lock);

	FUNC1(lockres->l_blocking <= DLM_LOCK_NL);

	if (lockres->l_level <= new_level) {
		FUNC5(ML_ERROR, "lockres->l_level (%d) <= new_level (%d)\n",
		     lockres->l_level, new_level);
		FUNC0();
	}

	FUNC5(0, "lock %s, new_level = %d, l_blocking = %d\n",
	     lockres->l_name, new_level, lockres->l_blocking);

	lockres->l_action = OCFS2_AST_DOWNCONVERT;
	lockres->l_requested = new_level;
	FUNC3(lockres, OCFS2_LOCK_BUSY);
	return FUNC4(lockres);
}