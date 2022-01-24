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
struct dlm_lock {int bast_pending; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  bast_list; } ;
struct dlm_ctxt {int /*<<< orphan*/  pending_basts; int /*<<< orphan*/  ast_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_lock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct dlm_ctxt *dlm, struct dlm_lock *lock)
{
	FUNC6();

	FUNC0(!dlm);
	FUNC0(!lock);
	FUNC1(&dlm->ast_lock);

	FUNC0(!FUNC4(&lock->bast_list));
	if (lock->bast_pending)
		FUNC5(0, "lock has a bast getting flushed right now\n");

	/* putting lock on list, add a ref */
	FUNC2(lock);
	FUNC7(&lock->spinlock);
	FUNC3(&lock->bast_list, &dlm->pending_basts);
	lock->bast_pending = 1;
	FUNC8(&lock->spinlock);
}