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
struct uwb_rc {int beaconing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uwb_rc*,int) ; 
 int FUNC1 (struct uwb_rc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct uwb_rc *rc, int channel)
{
	int ret = 0;

	if (channel == -1)
		FUNC0(rc, channel);

	if (channel != rc->beaconing) {
		if (rc->beaconing != -1 && channel != -1) {
			/*
			 * FIXME: should signal the channel change
			 * with a Channel Change IE.
			 */
			ret = FUNC2(rc, -1);
			if (ret < 0)
				return ret;
		}
		ret = FUNC1(rc, channel, 0);
	}

	if (channel != -1)
		FUNC0(rc, rc->beaconing);

	return ret;
}