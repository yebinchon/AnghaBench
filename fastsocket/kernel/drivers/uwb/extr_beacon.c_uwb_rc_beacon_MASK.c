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
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct uwb_rc {int beaconing; TYPE_2__* ies; TYPE_1__ uwb_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  wIELength; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct uwb_rc*,TYPE_2__*) ; 
 int FUNC3 (struct uwb_rc*,unsigned int,int) ; 
 int FUNC4 (struct uwb_rc*) ; 

int FUNC5(struct uwb_rc *rc, int channel, unsigned bpst_offset)
{
	int result;
	struct device *dev = &rc->uwb_dev.dev;

	if (channel < 0)
		channel = -1;
	if (channel == -1)
		result = FUNC4(rc);
	else {
		/* channel >= 0...dah */
		result = FUNC3(rc, bpst_offset, channel);
		if (result < 0)
			return result;
		if (FUNC1(rc->ies->wIELength) > 0) {
			result = FUNC2(rc, rc->ies);
			if (result < 0) {
				FUNC0(dev, "Cannot set new IE on device: "
					"%d\n", result);
				result = FUNC4(rc);
				channel = -1;
				bpst_offset = 0;
			}
		}
	}

	if (result >= 0)
		rc->beaconing = channel;
	return result;
}