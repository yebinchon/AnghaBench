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
struct ocfs2_lock_res {int /*<<< orphan*/  l_event; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_unlock_action; int /*<<< orphan*/  l_action; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_AST_INVALID ; 
 int /*<<< orphan*/  OCFS2_LOCK_BUSY ; 
 int /*<<< orphan*/  OCFS2_UNLOCK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(struct ocfs2_lock_res *lockres,
						int convert)
{
	unsigned long flags;

	FUNC1();
	FUNC3(&lockres->l_lock, flags);
	FUNC0(lockres, OCFS2_LOCK_BUSY);
	if (convert)
		lockres->l_action = OCFS2_AST_INVALID;
	else
		lockres->l_unlock_action = OCFS2_UNLOCK_INVALID;
	FUNC4(&lockres->l_lock, flags);

	FUNC5(&lockres->l_event);
	FUNC2();
}