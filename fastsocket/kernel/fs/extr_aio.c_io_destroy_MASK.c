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
struct mm_struct {int /*<<< orphan*/  ioctx_lock; } ;
struct kioctx {int dead; int /*<<< orphan*/  wait; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kioctx*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (char*,struct kioctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct kioctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct kioctx*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct kioctx *ioctx)
{
	struct mm_struct *mm = current->mm;
	int was_dead;

	/* delete the entry from the list is someone else hasn't already */
	FUNC5(&mm->ioctx_lock);
	was_dead = ioctx->dead;
	ioctx->dead = 1;
	FUNC2(&ioctx->list);
	FUNC6(&mm->ioctx_lock);

	FUNC1("aio_release(%p)\n", ioctx);
	if (FUNC3(!was_dead))
		FUNC4(ioctx);	/* twice for the list */

	FUNC0(ioctx);
	FUNC7(ioctx);

	/*
	 * Wake up any waiters.  The setting of ctx->dead must be seen
	 * by other CPUs at this point.  Right now, we rely on the
	 * locking done by the above calls to ensure this consistency.
	 */
	FUNC8(&ioctx->wait);
	FUNC4(ioctx);	/* once for the lookup */
}