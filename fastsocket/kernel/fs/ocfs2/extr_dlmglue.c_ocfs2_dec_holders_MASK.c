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
struct ocfs2_lock_res {int /*<<< orphan*/  l_ro_holders; int /*<<< orphan*/  l_ex_holders; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  DLM_LOCK_EX 129 
#define  DLM_LOCK_PR 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline void FUNC4(struct ocfs2_lock_res *lockres,
				     int level)
{
	FUNC2();

	FUNC1(!lockres);

	switch(level) {
	case DLM_LOCK_EX:
		FUNC1(!lockres->l_ex_holders);
		lockres->l_ex_holders--;
		break;
	case DLM_LOCK_PR:
		FUNC1(!lockres->l_ro_holders);
		lockres->l_ro_holders--;
		break;
	default:
		FUNC0();
	}
	FUNC3();
}