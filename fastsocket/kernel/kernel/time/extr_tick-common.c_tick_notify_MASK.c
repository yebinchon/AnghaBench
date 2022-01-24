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
struct notifier_block {int dummy; } ;

/* Variables and functions */
#define  CLOCK_EVT_NOTIFY_ADD 137 
#define  CLOCK_EVT_NOTIFY_BROADCAST_ENTER 136 
#define  CLOCK_EVT_NOTIFY_BROADCAST_EXIT 135 
#define  CLOCK_EVT_NOTIFY_BROADCAST_FORCE 134 
#define  CLOCK_EVT_NOTIFY_BROADCAST_OFF 133 
#define  CLOCK_EVT_NOTIFY_BROADCAST_ON 132 
#define  CLOCK_EVT_NOTIFY_CPU_DEAD 131 
#define  CLOCK_EVT_NOTIFY_CPU_DYING 130 
#define  CLOCK_EVT_NOTIFY_RESUME 129 
#define  CLOCK_EVT_NOTIFY_SUSPEND 128 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct notifier_block *nb, unsigned long reason,
			       void *dev)
{
	switch (reason) {

	case CLOCK_EVT_NOTIFY_ADD:
		return FUNC2(dev);

	case CLOCK_EVT_NOTIFY_BROADCAST_ON:
	case CLOCK_EVT_NOTIFY_BROADCAST_OFF:
	case CLOCK_EVT_NOTIFY_BROADCAST_FORCE:
		FUNC0(reason, dev);
		break;

	case CLOCK_EVT_NOTIFY_BROADCAST_ENTER:
	case CLOCK_EVT_NOTIFY_BROADCAST_EXIT:
		FUNC1(reason);
		break;

	case CLOCK_EVT_NOTIFY_CPU_DYING:
		FUNC3(dev);
		break;

	case CLOCK_EVT_NOTIFY_CPU_DEAD:
		FUNC7(dev);
		FUNC6(dev);
		FUNC5(dev);
		break;

	case CLOCK_EVT_NOTIFY_SUSPEND:
		FUNC8();
		FUNC9();
		break;

	case CLOCK_EVT_NOTIFY_RESUME:
		FUNC4();
		break;

	default:
		break;
	}

	return NOTIFY_OK;
}