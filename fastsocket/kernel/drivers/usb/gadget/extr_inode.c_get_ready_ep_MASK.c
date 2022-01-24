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
struct ep_data {int state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 unsigned int O_NONBLOCK ; 
#define  STATE_EP_ENABLED 129 
#define  STATE_EP_UNBOUND 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct ep_data*,int) ; 
 int /*<<< orphan*/  shortname ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4 (unsigned f_flags, struct ep_data *epdata)
{
	int	val;

	if (f_flags & O_NONBLOCK) {
		if (FUNC1 (&epdata->lock) != 0)
			goto nonblock;
		if (epdata->state != STATE_EP_ENABLED) {
			FUNC3 (&epdata->lock);
nonblock:
			val = -EAGAIN;
		} else
			val = 0;
		return val;
	}

	if ((val = FUNC0 (&epdata->lock)) < 0)
		return val;

	switch (epdata->state) {
	case STATE_EP_ENABLED:
		break;
	// case STATE_EP_DISABLED:		/* "can't happen" */
	// case STATE_EP_READY:			/* "can't happen" */
	default:				/* error! */
		FUNC2 ("%s: ep %p not available, state %d\n",
				shortname, epdata, epdata->state);
		// FALLTHROUGH
	case STATE_EP_UNBOUND:			/* clean disconnect */
		val = -ENODEV;
		FUNC3 (&epdata->lock);
	}
	return val;
}