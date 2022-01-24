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
struct fsg_dev {scalar_t__ state; int /*<<< orphan*/  thread_notifier; int /*<<< orphan*/  atomic_bitflags; int /*<<< orphan*/  lock; int /*<<< orphan*/ * thread_task; int /*<<< orphan*/  running; } ;

/* Variables and functions */
 scalar_t__ FSG_STATE_DATA_PHASE ; 
 scalar_t__ FSG_STATE_IDLE ; 
 scalar_t__ FSG_STATE_STATUS_PHASE ; 
 scalar_t__ FSG_STATE_TERMINATED ; 
 int /*<<< orphan*/  REGISTERED ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC2 (struct fsg_dev*) ; 
 scalar_t__ FUNC3 (struct fsg_dev*) ; 
 scalar_t__ FUNC4 (struct fsg_dev*) ; 
 int /*<<< orphan*/  fsg_driver ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct fsg_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct fsg_dev*) ; 
 scalar_t__ FUNC8 (struct fsg_dev*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct fsg_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(void *fsg_)
{
	struct fsg_dev		*fsg = fsg_;

	/* Allow the thread to be killed by a signal, but set the signal mask
	 * to block everything but INT, TERM, KILL, and USR1. */
	FUNC0(SIGINT);
	FUNC0(SIGTERM);
	FUNC0(SIGKILL);
	FUNC0(SIGUSR1);

	/* Allow the thread to be frozen */
	FUNC9();

	/* Arrange for userspace references to be interpreted as kernel
	 * pointers.  That way we can pass a kernel pointer to a routine
	 * that expects a __user pointer and it will work okay. */
	FUNC10(FUNC5());

	/* The main loop */
	while (fsg->state != FSG_STATE_TERMINATED) {
		if (FUNC3(fsg) || FUNC11(current)) {
			FUNC7(fsg);
			continue;
		}

		if (!fsg->running) {
			FUNC12(fsg);
			continue;
		}

		if (FUNC6(fsg))
			continue;

		FUNC13(&fsg->lock);
		if (!FUNC3(fsg))
			fsg->state = FSG_STATE_DATA_PHASE;
		FUNC14(&fsg->lock);

		if (FUNC2(fsg) || FUNC4(fsg))
			continue;

		FUNC13(&fsg->lock);
		if (!FUNC3(fsg))
			fsg->state = FSG_STATE_STATUS_PHASE;
		FUNC14(&fsg->lock);

		if (FUNC8(fsg))
			continue;

		FUNC13(&fsg->lock);
		if (!FUNC3(fsg))
			fsg->state = FSG_STATE_IDLE;
		FUNC14(&fsg->lock);
		}

	FUNC13(&fsg->lock);
	fsg->thread_task = NULL;
	FUNC14(&fsg->lock);

	/* If we are exiting because of a signal, unregister the
	 * gadget driver. */
	if (FUNC15(REGISTERED, &fsg->atomic_bitflags))
		FUNC16(&fsg_driver);

	/* Let the unbind and cleanup routines know the thread has exited */
	FUNC1(&fsg->thread_notifier, 0);
}