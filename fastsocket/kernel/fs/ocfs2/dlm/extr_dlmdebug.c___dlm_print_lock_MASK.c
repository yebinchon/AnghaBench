#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_3__ {int /*<<< orphan*/  cookie; int /*<<< orphan*/  node; int /*<<< orphan*/  convert_type; int /*<<< orphan*/  type; } ;
struct dlm_lock {int /*<<< orphan*/  spinlock; scalar_t__ unlock_pending; scalar_t__ cancel_pending; scalar_t__ lock_pending; scalar_t__ convert_pending; scalar_t__ bast_pending; int /*<<< orphan*/  bast_list; scalar_t__ ast_pending; int /*<<< orphan*/  ast_list; TYPE_2__ lock_refs; TYPE_1__ ml; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,char,char,char,char,char,char,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct dlm_lock *lock)
{
	FUNC6(&lock->spinlock);

	FUNC5("    type=%d, conv=%d, node=%u, cookie=%u:%llu, "
	       "ref=%u, ast=(empty=%c,pend=%c), bast=(empty=%c,pend=%c), "
	       "pending=(conv=%c,lock=%c,cancel=%c,unlock=%c)\n",
	       lock->ml.type, lock->ml.convert_type, lock->ml.node,
	       FUNC2(FUNC1(lock->ml.cookie)),
	       FUNC3(FUNC1(lock->ml.cookie)),
	       FUNC0(&lock->lock_refs.refcount),
	       (FUNC4(&lock->ast_list) ? 'y' : 'n'),
	       (lock->ast_pending ? 'y' : 'n'),
	       (FUNC4(&lock->bast_list) ? 'y' : 'n'),
	       (lock->bast_pending ? 'y' : 'n'),
	       (lock->convert_pending ? 'y' : 'n'),
	       (lock->lock_pending ? 'y' : 'n'),
	       (lock->cancel_pending ? 'y' : 'n'),
	       (lock->unlock_pending ? 'y' : 'n'));

	FUNC7(&lock->spinlock);
}