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
struct test_thread_data {int opcode; int* mutexes; size_t opdata; int bkl; void* event; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int MAX_RT_TEST_MUTEXES ; 
#define  RTTEST_LOCK 138 
#define  RTTEST_LOCKBKL 137 
#define  RTTEST_LOCKCONT 136 
#define  RTTEST_LOCKINT 135 
#define  RTTEST_LOCKINTNOWAIT 134 
#define  RTTEST_LOCKNOWAIT 133 
#define  RTTEST_NOP 132 
#define  RTTEST_RESET 131 
#define  RTTEST_RESETEVENT 130 
#define  RTTEST_UNLOCK 129 
#define  RTTEST_UNLOCKBKL 128 
 void* FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * mutexes ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rttest_event ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct test_thread_data *td, int lockwakeup)
{
	int i, id, ret = -EINVAL;

	switch(td->opcode) {

	case RTTEST_NOP:
		return 0;

	case RTTEST_LOCKCONT:
		td->mutexes[td->opdata] = 1;
		td->event = FUNC0(1, &rttest_event);
		return 0;

	case RTTEST_RESET:
		for (i = 0; i < MAX_RT_TEST_MUTEXES; i++) {
			if (td->mutexes[i] == 4) {
				FUNC5(&mutexes[i]);
				td->mutexes[i] = 0;
			}
		}

		if (!lockwakeup && td->bkl == 4) {
			FUNC6();
			td->bkl = 0;
		}
		return 0;

	case RTTEST_RESETEVENT:
		FUNC1(&rttest_event, 0);
		return 0;

	default:
		if (lockwakeup)
			return ret;
	}

	switch(td->opcode) {

	case RTTEST_LOCK:
	case RTTEST_LOCKNOWAIT:
		id = td->opdata;
		if (id < 0 || id >= MAX_RT_TEST_MUTEXES)
			return ret;

		td->mutexes[id] = 1;
		td->event = FUNC0(1, &rttest_event);
		FUNC3(&mutexes[id]);
		td->event = FUNC0(1, &rttest_event);
		td->mutexes[id] = 4;
		return 0;

	case RTTEST_LOCKINT:
	case RTTEST_LOCKINTNOWAIT:
		id = td->opdata;
		if (id < 0 || id >= MAX_RT_TEST_MUTEXES)
			return ret;

		td->mutexes[id] = 1;
		td->event = FUNC0(1, &rttest_event);
		ret = FUNC4(&mutexes[id], 0);
		td->event = FUNC0(1, &rttest_event);
		td->mutexes[id] = ret ? 0 : 4;
		return ret ? -EINTR : 0;

	case RTTEST_UNLOCK:
		id = td->opdata;
		if (id < 0 || id >= MAX_RT_TEST_MUTEXES || td->mutexes[id] != 4)
			return ret;

		td->event = FUNC0(1, &rttest_event);
		FUNC5(&mutexes[id]);
		td->event = FUNC0(1, &rttest_event);
		td->mutexes[id] = 0;
		return 0;

	case RTTEST_LOCKBKL:
		if (td->bkl)
			return 0;
		td->bkl = 1;
		FUNC2();
		td->bkl = 4;
		return 0;

	case RTTEST_UNLOCKBKL:
		if (td->bkl != 4)
			break;
		FUNC6();
		td->bkl = 0;
		return 0;

	default:
		break;
	}
	return ret;
}