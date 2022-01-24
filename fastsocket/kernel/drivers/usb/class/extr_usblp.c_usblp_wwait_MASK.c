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
struct usblp {int flags; int /*<<< orphan*/  wwait; int /*<<< orphan*/  mut; int /*<<< orphan*/  statusbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int ENOSPC ; 
 int LP_ABORT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct usblp*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usblp*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct usblp*,int) ; 
 int /*<<< orphan*/  waita ; 

__attribute__((used)) static int FUNC12(struct usblp *usblp, int nonblock)
{
	FUNC0(waita, current);
	int rc;
	int err = 0;

	FUNC1(&usblp->wwait, &waita);
	for (;;) {
		FUNC8(TASK_INTERRUPTIBLE);
		if (FUNC4(&usblp->mut)) {
			rc = -EINTR;
			break;
		}
		rc = FUNC11(usblp, nonblock);
		FUNC5(&usblp->mut);
		if (rc <= 0)
			break;

		if (FUNC7(FUNC2(1500)) == 0) {
			if (usblp->flags & LP_ABORT) {
				err = FUNC9(usblp, err);
				if (err == 1) {	/* Paper out */
					rc = -ENOSPC;
					break;
				}
			} else {
				/* Prod the printer, Gentoo#251237. */
				FUNC3(&usblp->mut);
				FUNC10(usblp, usblp->statusbuf);
				FUNC5(&usblp->mut);
			}
		}
	}
	FUNC8(TASK_RUNNING);
	FUNC6(&usblp->wwait, &waita);
	return rc;
}