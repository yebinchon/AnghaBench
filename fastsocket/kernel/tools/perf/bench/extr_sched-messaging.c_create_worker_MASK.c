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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_STACK_MIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),void*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int) ; 
 void* FUNC8 (void*) ; 
 int /*<<< orphan*/  thread_mode ; 

__attribute__((used)) static pthread_t FUNC9(void *ctx, void *(*func)(void *))
{
	pthread_attr_t attr;
	pthread_t childid;
	int err;

	if (!thread_mode) {
		/* process mode */
		/* Fork the receiver. */
		switch (FUNC2()) {
		case -1:
			FUNC0("fork()");
			break;
		case 0:
			(*func) (ctx);
			FUNC1(0);
			break;
		default:
			break;
		}

		return (pthread_t)0;
	}

	if (FUNC4(&attr) != 0)
		FUNC0("pthread_attr_init:");

#ifndef __ia64__
	if (FUNC5(&attr, PTHREAD_STACK_MIN) != 0)
		FUNC0("pthread_attr_setstacksize");
#endif

	err = FUNC6(&childid, &attr, func, ctx);
	if (err != 0) {
		FUNC3(stderr, "pthread_create failed: %s (%d)\n",
			FUNC7(err), err);
		FUNC1(-1);
	}
	return childid;
}