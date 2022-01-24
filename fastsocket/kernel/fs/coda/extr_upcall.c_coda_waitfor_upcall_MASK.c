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
struct upc_req {int uc_flags; int /*<<< orphan*/  uc_sleep; int /*<<< orphan*/  uc_chain; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct upc_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long HZ ; 
 int REQ_ABORT ; 
 int REQ_WRITE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long coda_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static inline void FUNC12(struct upc_req *req)
{
	FUNC1(wait, current);
	unsigned long timeout = jiffies + coda_timeout * HZ;
	sigset_t old;
	int blocked;

	FUNC3(&old);
	blocked = 1;

	FUNC2(&req->uc_sleep, &wait);
	for (;;) {
		if (FUNC0(req))
			FUNC9(TASK_INTERRUPTIBLE);
		else
			FUNC9(TASK_UNINTERRUPTIBLE);

		/* got a reply */
		if (req->uc_flags & (REQ_WRITE | REQ_ABORT))
			break;

		if (blocked && FUNC11(jiffies, timeout) &&
		    FUNC0(req))
		{
			FUNC4(&old);
			blocked = 0;
		}

		if (FUNC10(current)) {
			FUNC5(&req->uc_chain);
			break;
		}

		if (blocked)
			FUNC8(HZ);
		else
			FUNC7();
	}
	if (blocked)
		FUNC4(&old);

	FUNC6(&req->uc_sleep, &wait);
	FUNC9(TASK_RUNNING);
}