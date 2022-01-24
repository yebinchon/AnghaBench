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
struct ocfs2_lock_res {int l_flags; scalar_t__ l_requested; scalar_t__ l_level; TYPE_1__* l_ops; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DLM_LOCK_NL ; 
 int LOCK_TYPE_REQUIRES_REFRESH ; 
 int OCFS2_LOCK_ATTACHED ; 
 int OCFS2_LOCK_BUSY ; 
 int OCFS2_LOCK_LOCAL ; 
 int OCFS2_LOCK_NEEDS_REFRESH ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void FUNC5(struct ocfs2_lock_res *lockres)
{
	FUNC3();

	FUNC0((!(lockres->l_flags & OCFS2_LOCK_BUSY)));
	FUNC0(lockres->l_flags & OCFS2_LOCK_ATTACHED);

	if (lockres->l_requested > DLM_LOCK_NL &&
	    !(lockres->l_flags & OCFS2_LOCK_LOCAL) &&
	    lockres->l_ops->flags & LOCK_TYPE_REQUIRES_REFRESH)
		FUNC2(lockres, OCFS2_LOCK_NEEDS_REFRESH);

	lockres->l_level = lockres->l_requested;
	FUNC2(lockres, OCFS2_LOCK_ATTACHED);
	FUNC1(lockres, OCFS2_LOCK_BUSY);

	FUNC4();
}