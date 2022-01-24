#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_lock_res {int l_flags; scalar_t__ l_level; scalar_t__ l_requested; TYPE_1__* l_ops; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DLM_LOCK_NL ; 
 int LOCK_TYPE_REQUIRES_REFRESH ; 
 int OCFS2_LOCK_ATTACHED ; 
 int OCFS2_LOCK_BUSY ; 
 int /*<<< orphan*/  OCFS2_LOCK_NEEDS_REFRESH ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void FUNC5(struct ocfs2_lock_res *lockres)
{
	FUNC3();

	FUNC0(!(lockres->l_flags & OCFS2_LOCK_BUSY));
	FUNC0(!(lockres->l_flags & OCFS2_LOCK_ATTACHED));

	/* Convert from RO to EX doesn't really need anything as our
	 * information is already up to data. Convert from NL to
	 * *anything* however should mark ourselves as needing an
	 * update */
	if (lockres->l_level == DLM_LOCK_NL &&
	    lockres->l_ops->flags & LOCK_TYPE_REQUIRES_REFRESH)
		FUNC2(lockres, OCFS2_LOCK_NEEDS_REFRESH);

	lockres->l_level = lockres->l_requested;
	FUNC1(lockres, OCFS2_LOCK_BUSY);

	FUNC4();
}