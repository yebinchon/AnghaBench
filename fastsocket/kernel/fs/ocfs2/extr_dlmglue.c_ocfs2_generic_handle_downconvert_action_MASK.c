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
struct ocfs2_lock_res {int l_flags; scalar_t__ l_blocking; scalar_t__ l_level; scalar_t__ l_requested; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DLM_LOCK_NL ; 
 int OCFS2_LOCK_ATTACHED ; 
 int OCFS2_LOCK_BLOCKED ; 
 int OCFS2_LOCK_BUSY ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC5(struct ocfs2_lock_res *lockres)
{
	FUNC2();

	FUNC0(!(lockres->l_flags & OCFS2_LOCK_BUSY));
	FUNC0(!(lockres->l_flags & OCFS2_LOCK_ATTACHED));
	FUNC0(!(lockres->l_flags & OCFS2_LOCK_BLOCKED));
	FUNC0(lockres->l_blocking <= DLM_LOCK_NL);

	lockres->l_level = lockres->l_requested;
	if (lockres->l_level <=
	    FUNC4(lockres->l_blocking)) {
		lockres->l_blocking = DLM_LOCK_NL;
		FUNC1(lockres, OCFS2_LOCK_BLOCKED);
	}
	FUNC1(lockres, OCFS2_LOCK_BUSY);

	FUNC3();
}